Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # root to: "cocktails#index"
  root to: 'pages#home'
    resources :cocktails, only: [:index, :show, :new, :create, :destroy] do
    collection do # collection => no restaurant id in URL
      get 'top' # RestaurantsController#top
    end
    collection do # collection => no restaurant id in URL
      get 'cocktails/id', to: 'cocktails#search' # RestaurantsController#top
    end
    resources :doses, only: [:new, :create]
  end
  resources :doses, only: [:destroy]
end
