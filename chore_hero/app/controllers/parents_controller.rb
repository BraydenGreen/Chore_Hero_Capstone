class ParentsController < ApplicationController
  before_filter :authenticate_parent!
  def index
  end

  def parent_show
  end

end
