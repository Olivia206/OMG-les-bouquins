class UserController < ApplicationController

    def index
      @user = current_user
      @user = User.find(params[:id])
      @users = User.all
      @user.destroy
  
    end
  
    def new
      @user = User.new
    end
  
    def show
      @user = User.find(params[:id])
    end
  
    def edit
    end
  
    def create
      @user = User.new(params[:id])
  
      if @user.save
        session[:user_id] = @user.id
        flash[:notice] = "Thank you for signing up! You are now logged in."
        redirect_to new_user_profile_path(:user_id => @user)
      else
        render :action => 'new'
      end
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end
  
  end