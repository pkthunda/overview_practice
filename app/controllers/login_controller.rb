class LoginController < ApplicationController
  def new

  end

  def create
    user = Developer.find_by(email: params[:login][:email].downcase)
    if user && user.authenticate(params[:login][:password])
      make_session(user)
      redirect_to developers_path
    else
      flash[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def logout
    session[:user_id] = nil
    @current_user = nil
    flash[:error] = 'Logged Out'
    render 'new'
  end

  private

    def make_session(user)
      session[:user_id] = user.id
    end
end
