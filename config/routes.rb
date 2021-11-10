# Rémi L. Bruneau 18/10/21
Rails.application.routes.draw do

  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  get 'recette/:id', to: 'recepie#showRecepie'
  get 'admin', to: 'admin#mainPage'
  get 'admin/recette/:id', to: 'admin#showRecepie'
  get 'admin/recette', to: 'admin#show', as: 'admin_show'
  get 'mesrecettes', to: 'logged#myRecepies', as: 'my_recepies'
  get 'mesrecettes/:id', to: 'logged#myRecepieInfo', as: 'my_recepies_infos'
  
end
