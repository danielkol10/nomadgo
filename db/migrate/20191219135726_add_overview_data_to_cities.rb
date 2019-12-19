# frozen_string_literal: true

class AddOverviewDataToCities < ActiveRecord::Migration[6.0]
  def change
    add_column :cities, :population, :string
    add_column :cities, :why_love, :text
    add_column :cities, :housing_cost, :string
    add_column :cities, :food_cost, :string
    add_column :cities, :transportation_cost, :string
    add_column :cities, :community, :string
    add_column :cities, :facebook_groups, :string
    add_column :cities, :meetups, :string
    add_column :cities, :average_speed_dl, :string
    add_column :cities, :average_speed_up, :string
    add_column :cities, :environment_quality, :string
    add_column :cities, :water_quality, :string
    add_column :cities, :air_quality, :string
    add_column :cities, :work_places, :string
    add_column :cities, :cafes, :string
    add_column :cities, :coworking, :string
    add_column :cities, :activities, :string
    add_column :cities, :nightlife, :string
    add_column :cities, :outdoor, :string
    add_column :cities, :safety, :string
    add_column :cities, :crime_level, :string
    add_column :cities, :daylight_safety, :string
    add_column :cities, :night_safety, :string
    add_column :cities, :tolerance, :string
    add_column :cities, :racial_tolerance, :string
    add_column :cities, :lgbt_tolerance, :string
    add_column :cities, :walkability, :string
    add_column :cities, :walkability_comfort, :string
    add_column :cities, :healthcare, :string
    add_column :cities, :medical_staff, :string
    add_column :cities, :medical_equipment, :string
    add_column :cities, :healthcare_centers, :string
    add_column :cities, :english_speaking, :string
    add_column :cities, :english_speaking_percent, :string
  end
end
