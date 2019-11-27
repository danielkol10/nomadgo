module Cities
  class WeatherJob < ApplicationJob
    queue_as :default

    def perform(city_id)
      city = City.find_by(id: city_id)
      city.sync_weather!
      # Do something later
    end
  end
end