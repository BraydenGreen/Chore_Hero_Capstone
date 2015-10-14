class ParentsController < ApplicationController
  before_filter :authenticate_parent!
  before_action :parent, only: [:show, :edit, :update, :destroy]
  
  def index
    @parents = Parent
  end

  def parent_show
  end

  def self.create_child
    #creates child possibly by routing to create child variable 
  end

 def index
    @parents = Parent.all
  end

  def show
  end

  def edit
  end

  def update
    if @parent.update(parent_params)
      redirect_to parents_path(@parent.id)
    else
      render 'edit'
    end
  end

  def new
    @parent = Parent.new
  end

  def create
    @parent = Parent.new(parent_params)
      if @parent.save
        redirect_to parents_path(@parent.id)
      else
        render 'new'
      end
  end

  def destroy
    @parent.destroy
    redirect_to parents_path
  end

  private

     def parent_params
       params.require(:parent).permit(:name, :email)
     end

     def parent
       @parent = Parent.find(params[:id])
     end

end
