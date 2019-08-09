Rails.application.routes.draw do

  get 'gossip/:id_gossip', to: 'gossip#show', as: 'showgossip'
  get 'auteur/:id', to: 'auteur#profil', as:'user_id'
  root to: 'home#index'
  get '/:user/', to: 'home#index'
  get 'team/show', to: 'team#show'
  get 'contact/show', to: 'contact#show'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
resources :gossips
end
