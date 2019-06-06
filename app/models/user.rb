class User < ActiveRecord::Base
  has_many :try_restaurant
  has_many :restaurants, through: :try_restaurant
end
