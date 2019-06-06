class UserController < ApplicationController

  get '/users' do
    @users = User.all
    erb :'/users/index'
  end

  get '/users/new' do
    erb :'/users/create'
  end

  post '/users' do
    @user = User.create(params)
    redirect to "/users/#{@user.id}"
  end

  get '/users/:id' do
    @user = User.find(params[:id])
    @restaurants = @user.restaurants
    erb :'/users/show'
  end

end
