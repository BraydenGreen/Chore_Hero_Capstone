class ParentsController < ApplicationController
  before_filter :authenticate_parent!
  def index
  end

  def parent_show
  end

  def self.create_child
    #creates child possibly by routing to create child variable 
  end

end
