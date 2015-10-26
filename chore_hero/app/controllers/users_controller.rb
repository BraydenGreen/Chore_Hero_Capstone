class UsersController < ApplicationController
  before_filter :authenticate_user!
  before_action :user, only: [:show]

  def show
  end

  def new
    @child = Child.new(type: 'Child')
  end

  def create
    
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

     def user_params
       params.require(:user).permit(:name, :email)
     end

     def user
       @user = User.find(params[:id])
     end

end
