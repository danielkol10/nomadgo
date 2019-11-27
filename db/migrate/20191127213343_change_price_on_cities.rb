class ChangePriceOnCities < ActiveRecord::Migration[6.0]
  def change
    rename_column :cities, :price, :old_price
    add_column :cities, :price, :integer, default: 0
    City.find_each.each do |city|
      city.update(price: city.old_price)
    end
    add_index :cities, :price
    remove_column :cities, :old_price
  end
end
