class AddWeatherUpdatedAtToCities < ActiveRecord::Migration[6.0]
  def change
    add_column :cities, :weather_updated_at, :datetime
  end
end
