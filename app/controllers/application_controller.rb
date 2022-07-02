<<<<<<< HEAD
class ApplicationController < ActionController::Base
end
=======
class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

         def configure_permitted_parameters
              devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :email, :password, :address, :role)}

              devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :email, :password, :current_password, :address, :role)}
         end
end
>>>>>>> 44f0b03d097c8b08eaf45a4bd8d4d066cc0de6f4
