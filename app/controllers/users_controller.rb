class UsersController < ApplicationController
    before_action :require_signin, except:[:new, :create]
    before_action :require_correct_user, only: [:edit, :update, :destroy]
    def index
      @users = User.all
    end
  
    def new
      @user = User.new
    end
  
    def show
      @user = User.find(params[:id])
    end
  
    def create
      @user = User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to @user, notice: "Thanks for Signing Up!"
      else
        render :new
      end
    end
  
    def edit
      @user = User.find(params[:id])
    end
  
    def update
      @user = User.find(params[:id])
      if @user.update(user_params)
        redirect_to @user, notice: "Account changes saved"
      else
        render :edit
      end
    end
  
    def destroy
      @user = User.find(params[:id])
      @user.destroy
      session[:user_id] = nil
      redirect_to users_url, alert: "User successfully deleted!"
    end
  
    private
  
    def require_correct_user
      @user = User.find(params[:id])
      redirect_to root_url unless current_user?(@user)
    end
  
    def user_params
      params.require(:user).permit(:name, :username, :email, :password, :password_confirmation)
    end
  end
