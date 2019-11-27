# frozen_string_literal: true

class City < ApplicationRecord
  has_one :guide, dependent: :destroy

  after_commit on: :create do
    Cities::WeatherJob.perform_later(self.id)
  end

  def sync_weather!
    sync_weather
    save!
  end

  def sync_weather
    return true unless lat.present?  long.present?
    url = "https://api.darksky.net/forecast/3399c810cb9e7497f7bedddf3f891700/#{self.lat},#{self.long}"
    response = HTTParty.get(url, format: :json)
    self.weather = response.parsed_response['currently']['temperature']
    self.weather_updated_at = Time.current
  end
end
