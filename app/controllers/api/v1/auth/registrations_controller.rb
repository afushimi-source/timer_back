class Api::V1::Auth::RegistrationsController < DeviseTokenAuth::RegistrationsController
  def sign_up_params
    params.require(:registration).permit(:nickname, :email, :password, :password_confirmation)
  end

  def account_update_params
    params.require(:registration).permit(:nickname, :email)
  end
end
