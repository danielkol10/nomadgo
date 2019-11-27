class AddLatAndLongToCities < ActiveRecord::Migration[6.0]
  def change
    add_column :cities, :lat, :string
    add_column :cities, :long, :string
  end
end
