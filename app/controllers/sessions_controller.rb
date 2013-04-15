class SessionsController < ApplicationController
  skip_before_filter :require_user, :only => [:new, :create]

  def new
  end

  def create
    user = User.find_by(email: params[:session][:email])
    if user
      @current_user = user # should I have this
      session[:user_id] = user.id
      # sign_in user
      redirect_to courses_path
    else
      render "new"
    end  
  end

  def destroy
    redirect_to root_url
  end

end