class ApplicationController < ActionController::API
  include DeviseTokenAuth::Concerns::SetUserByToken

  skip_before_action :verify_authenticiy_token, raise: false
  helper_method :current_user, :user_sighned_in?
end
