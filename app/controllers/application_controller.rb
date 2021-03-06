class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?


  def favorite_text
    return @favorite_exists ? "unfavorite" : "Favorite"
  end

  helper_method :favorite_text

    protected

    # If you have extra params to permit, append them to the sanitizer.
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    end
end
