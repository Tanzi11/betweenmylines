class UsersController < ApplicationController

  get '/signup' do
    if logged_in?
      redirect "/stories"
    else
    erb :"users/create_user"
    end
  end

  post '/signup' do
    user = User.new(params)
    if user.save
      session[:user_id] = user.id
      redirect "/stories"
    else
      redirect "/signup"
    end
  end

  get '/login' do
  if logged_in?
    redirect "/stories"
  else
  erb :"users/login"
end
end

post '/login' do
  user = User.find_by(username: params[:username])
  if user && user.authenticate(params[:password])
  session[:user_id] = user.id
  redirect "/stories"
else
  redirect "/login"
end
end

get '/show' do
  erb :"users/show"
end


end
