# Rémi L. Bruneau 18/10/21
class LoggedController < ApplicationController
    before_action :authenticate_user!
     def myRecepies
        render '/myrecepies'
     end

     def myRecepieInfo
        @recepe = current_user.recettes.where(id:params[:id]).take
        if@recepe != nil
            @recepe_ingredients = @recepe.recette_ingredients
            @ingrediants = @recepe.ingredients
        
            render "/layouts/recepie"
        else
            render file: "#{Rails.root}/public/404", status: :not_found
        end
     end
 end
 