class ChoresController < ApplicationController
  def index
    @chores = Chore.all
  end

  def new
    @chore = chore.new
  end

  def create
    @chore = Chore.find
  end

  def edit
  end

  def show
  end
end
