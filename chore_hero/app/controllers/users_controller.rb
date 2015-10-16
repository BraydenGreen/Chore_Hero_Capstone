class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_action :user, only: [:show, :edit, :update, :destroy]
  
 def index
    @users = User.all
  end


  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to users_path(@user.id)
    else
      render 'edit'
    end
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  def show
  end

  private

     def user_params
       params.require(:user).permit(:name, :email)
     end

     def user
       @user = User.find(params[:id])
     end

end
