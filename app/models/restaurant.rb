class Restaurant < ActiveRecord::Base
 has_many :try_restaurant
 has_many :users, through: :try_restaurant
end
