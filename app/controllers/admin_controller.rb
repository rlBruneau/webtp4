# Rémi L. Bruneau 18/10/21
class AdminController < ApplicationController
   before_action :authenticate_user!
   before_action :isAdmin

    def showRecepie
        @recepe = Recette.where(id:params[:id]).take
        @user = @recepe.user
        @nbIng = @recepe.recette_ingredients.length
        render '/layouts/adminRecepie'
    end

    def mainPage
        render '/admin'
    end

    def show
        @users = User.all
        render "/index"
    end
    def isAdmin
        if !current_user.is_admin?
            redirect_to root_path
        end
    end
end
