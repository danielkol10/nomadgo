require 'json'
require 'httparty'
# frozen_string_literal: true

class CitiesController < ApplicationController
  def index
    @cities = City.all

    @cities = City.where('price <= ?', params[:price]) if params[:price]

    respond_to do |f|
      f.html
      f.js
    end
  end

  def show
    @city = City.find(params[:id])
  end

  # helper_method :current_user
end
