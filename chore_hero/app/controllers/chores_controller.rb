class ChoresController < ApplicationController
  before_filter :authenticate_parent!, except: [:index, :show]
  before_action :chore, only: [:show, :edit, :update, :destroy]

  def index
    @chores = Chore.all
  end

  def show
  end

  def edit
  end

  def update
    if @chore.update(chore_params)
      redirect_to chores_path(@chore.id)
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
        redirect_to chores_path(@chore.id)
      else
        render 'new'
      end
  end

  def destroy
    @chore.destroy
    redirect_to chores_path
  end

  private

     def chore_params
       params.require(:chore).permit(:title, :description, :xp_value, :complete)
     end

     def chore
       @chore = Chore.find(params[:id])
     end

end
