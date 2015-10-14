class Parent::SessionsController < Devise::SessionsController
  
  def after_sign_in_path_for(resource)
    '/parent_show'
  end
  
end