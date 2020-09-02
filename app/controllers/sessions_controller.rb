class SessionsController < ApplicationController 
    def new 
      @user = User.new
    end
  
    def create 
      @user = User.find_by(username: params[:username])
      #binding.pry
      if (@user) && (@user.password_hash == params[:password_hash])
        session[:user_id] = @user.id
        redirect_to @user
      else
        @message = "Username or Password Incorrect"
        render :new
      end
    end
    
    # log user out and redirect to login
    # think this is broken - debug with binding.pry
    def destroy 
      reset_session
      redirect_to "/login"
    end 

    def profile
      redirect_to current_user
    end
  end