class AddColumnsToCuisinesRestaurants < ActiveRecord::Migration
  def change
    add_column :cuisines_restaurants, :cuisine_id, :serial
    add_column :cuisines_restaurants, :restaurant_id, :serial
  end
end
