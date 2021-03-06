class ChoresController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  before_action :chore, only: [:show, :edit, :update, :destroy, :complete_chore]

  def assigned
    render json: { records: Chore.assigned(current_user) }  
  end

  def index
    @chores = Chore.all
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
    if @chore.update(chore_params)
      redirect_to chores_path(@chore.id)
    else
      render 'edit'
    end
  end

  def new
    @children_options = []
    current_user.children.each do |child|
    @children_options << [child.name, child.id]
    end
    @chore = Chore.new
  end

  def create
    @chore = Chore.new(chore_params)
      if @chore.save
        redirect_to chores_path(@chore.id)
      else
        render 'new'
      end
  end

  def destroy
    @chore.destroy
    redirect_to :back
  end


  # def total_points
  #   @chore.child.points_total = @chore.xp_value + @chore.child.points_total
  #   @chore.child.points_total.save
  # end

  def complete_chore
    @chore.complete = true
    @chore.save
    @chore.child.add_points_and_save(@chore.xp_value)
    redirect_to :back
  end

  # get user id off of current user

  private

     def chore_params
       params.require(:chore).permit(:title, :description, :xp_value, :complete, :child_id, :avatar)
     end

     def chore
       @chore = Chore.find(params[:id])
     end

end
