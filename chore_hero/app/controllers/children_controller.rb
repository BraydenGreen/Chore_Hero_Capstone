class ChildrenController < ApplicationController
  def index
    @children = Child.all
  end
end
