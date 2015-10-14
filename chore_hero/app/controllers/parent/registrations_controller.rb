class Parent::RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(resource)
    '/parent_show'
  end

  #this overrides the devise redirect, and routes to '/parent_show'
  #this is a method that was written/provided by devise
end