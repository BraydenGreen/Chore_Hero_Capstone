class BadgesController < ApplicationController
  before_filter :authenticate_user!, except: [:show, :index]
  before_action :badge, only: [:show, :edit, :update, :destroy]

  def assigned
    render json: { records: Badge.assigned(current_user) }  
  end


  def index
    # badges should be parent specific
    @badges = Badge.all
  end

  def show
  end

  def edit

    @children_options = []
    current_user.children.each do |child|
    @children_options << [child.name, child.id]
    end
  end

  def update
    if @badge.update(badge_params)
      redirect_to badges_path(@badge.id)
    else
      render 'edit'
    end
  end

  def new
    @children_options = []
    current_user.children.each do |child|
    @children_options << [child.name, child.id]
    end
    @badge = Badge.new
  end

  def create
    @badge = Badge.new(badge_params)
      if @badge.save
        redirect_to badges_path(@badge.id)
      else
        render 'new'
      end
  end

  def destroy
    @badge.destroy
    redirect_to badges_path
  end

  private

     def badge_params
       params.require(:badge).permit(:title, :description, :badge_multiplier, :child_id, :avatar)
     end

     def badge
       @badge = Badge.find(params[:id])
     end

end
