require 'json'
require 'httparty'
# frozen_string_literal: true

class CitiesController < ApplicationController
  def index
    @cities = City.all

    @search = params['search']
    if @search.present?
      @price = @search['price']
      @cities = City.where(price: @price)
    end
  end

  def show
    @city = City.find(params[:id])
    dark_sky(41.8404, 23.4857)
  end

  def dark_sky(lat, long)
    url = "https://api.darksky.net/forecast/3399c810cb9e7497f7bedddf3f891700/#{lat},#{long}"
    response = HTTParty.get(url, format: :json)
    body = JSON.parse(response.body)
    temperature = body['currently']['temperature']
    puts temperature
  end
  # helper_method :current_user
end
