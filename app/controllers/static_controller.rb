class StaticController < ApplicationController
    def homepage
        if current_user
            if current_user.role == "customer"
                redirect_to root_path
            elsif current_user.role == "publisher"
                redirect_to books_path
            end
        else
            redirect_to new_user_session_path
        end
    end
end