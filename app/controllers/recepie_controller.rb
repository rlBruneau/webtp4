#Rémi L. Bruneau 10-21-2021
class RecepieController < ApplicationController
    def showRecepie
        @recepe = Recette.where(id:params[:id]).take
        @recepe_ingredients = @recepe.recette_ingredients
        @ingrediants = @recepe.ingredients

        @recepieIngrediantName = Array.new()
        for i in 0..@ingrediants.length - 1
            @recepieIngrediantName << @ingrediants[i].nom
        end
        respond_to do |format|
            format.html { render '/layouts/recepie'}
            format.json { render :json => @recepieIngrediantName.to_json}
            format.xml { render :xml => @recepieIngrediantName.as_json}
        end
    end
end
