class SessionsController < ApplicationController
  def new
  end

  def create
    if user = User.authenticate_with_credentials(params[:email], params[:password])
      session[:user_id] = user.id
      redirect_to :root
    else 
      render :new
    end

  end

  def destroy
    # Remove the cookie
    session[:user_id] = nil
    redirect_to :root
  end
end
