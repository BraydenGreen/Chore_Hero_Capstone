class ChoresController < ApplicationController
  
  before_action :find_chore, only: [:show, :edit, :update, :destroy]
  
  def show
  end

  def edit
  end

  def update
    if @chore.update(chore_params)
      redirect_to chore_path(@chore.id)
    else
      render 'edit'
    end
  end

  def new
    @chore = Chore.new
  end

  def create
    @chore = Chore.new(chore_params)
      if @chore.save
        redirect_to chore_path(@chore.id)
      else
        render 'new'
      end
  end

  def destroy
    @chore.destroy
    redirect_to chore_path(current_user)
  end

  def vote
    @chore = Chore.find(params[:id])
    @user = current_user
    @chore.liked_by @user
    redirect_to users_path
  end

  private

     def chore_params
       params.require(:chore).permit(:user_id, :title, :description, :chore_multiplier)
     end
    
     def find_chore
       @chore = Chore.find(params[:id])
     end

end
