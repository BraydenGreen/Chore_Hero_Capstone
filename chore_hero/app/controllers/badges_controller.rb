class BadgesController < ApplicationController

  before_action :find_badge, only: [:show, :edit, :update, :destroy]
  
  def show
  end

  def edit
  end

  def update
    if @badge.update(badge_params)
      redirect_to badge_path(@badge.id)
    else
      render 'edit'
    end
  end

  def new
    @badge = Badge.new
  end

  def create
    @badge = Badge.new(badge_params)
      if @badge.save
        redirect_to badge_path(@badge.id)
      else
        render 'new'
      end
  end

  def destroy
    @badge.destroy
    redirect_to badge_path(current_user)
  end

  def vote
    @badge = Badge.find(params[:id])
    @user = current_user
    @badge.liked_by @user
    redirect_to users_path
  end

  private

     def badge_params
       params.require(:badge).permit(:user_id, :title, :description, :badge_multiplier)
     end

     def find_badge
       @badge = badge.find(params[:id])
     end

end
