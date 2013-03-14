class CreateRestaurantsTable <ActiveRecord::Migration

  def change
    create_table :restaurants do |t|
      t.string :name, :null => false
    end
  end
end