# Rémi L. Bruneau 18/10/21
class HomeController < ApplicationController
    @isAdmin = false;
    def index
        @recepies = Recette.order(:titre);
        @isAdmin = false;
        render '/index';
    end
end
