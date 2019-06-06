class CreateTryRestaurantsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :try_restaurants do |t|
      t.integer :user_id
      t.integer :restaurant_id
    end
  end
end
