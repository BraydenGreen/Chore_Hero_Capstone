class ChildrenController < ApplicationController
  before_filter :authenticate_user!, except: [:index, :show]
  before_action :children, only: [:show, :edit, :update, :destroy]

  def index
    @children = Child.all
  end

  def show
  end

  def edit
  end

  def update
    if @child.update(children_params)
      redirect_to user_path(current_user.id)
    else
      render :edit
    end
  end

  def new
    @child = Child.new(type: 'Child')
  end

  def create
    @child = current_user.children.new(children_params)
    if @child.save
      redirect_to user_path(current_user)
    else
      render :new
    end
  end

  def destroy
    @child.destroy
    redirect_to user_path(current_user)
  end

  private

     def children_params
       params.require(:child).permit(:name, :password, :email, :user_id)
     end

     def children
       @child = Child.find(params[:id])
     end
end
