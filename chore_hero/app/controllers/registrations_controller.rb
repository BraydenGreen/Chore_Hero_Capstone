class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params

    params.require(:parent).permit(:name, :email)

  end

end