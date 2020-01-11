class AuthController < ApplicationController
  def login
  end

  def new
    @user = User.new
  end
  def logout
    session[:id] = nil
    session[:name] = nil
    redirect_to("/auth/login")
  end
  
  def create
    @user = User.new(name: params[:name], email: params[:email], password: params[:password])
    if @user.save
      session[:id] = @user.id
      session[:name] = @user.name
      redirect_to("/posts/index")
    else
      render("/auth/new")
    end
  end
  def login_form
    user = User.find_by(email: params[:email], password: params[:password])
    if user
      session[:id] = user.id
      session[:name] = user.name
      redirect_to("/posts/index")
    else
      render("/auth/login")
    end
  end
  
end
