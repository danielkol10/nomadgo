class AddWeatherToCities < ActiveRecord::Migration[6.0]
  def change
    add_column :cities, :weather, :string
  end
end
