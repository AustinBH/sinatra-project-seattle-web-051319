class RestaurantController < ApplicationController

  get '/restaurants' do
    @restaurants = Restaurant.all
    erb :'restaurants/index'
  end

  get '/restaurants/new' do
    erb :'restaurants/create'
  end

  post '/restaurants' do
    @restaurant = Restaurant.create(params)
    redirect to "/restaurants/#{@restaurant.id}"
  end

  get '/restaurants/:id' do
    @restaurant = Restaurant.find(params[:id])
    @users = @restaurant.users
    @all_users = User.all
    erb :'restaurants/show'
  end

  post '/restaurants/:id' do
    @restaurant = Restaurant.find(params[:id])
    @user = User.find(params[:user_id])
    if TryRestaurant.where(user: @user, restaurant: @restaurant) != []
    else
      @try_restaurant = TryRestaurant.create(user: @user, restaurant: @restaurant)
    end
    redirect to "/restaurants/#{@restaurant.id}"
  end

end
