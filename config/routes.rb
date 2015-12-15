Rails.application.routes.draw do
  resources :campsites, only: [:index, :show] do
    resources :campers, only: [:index] do
      resources :supplies, only: [:index]
    end
  end

  resources :campers, only: [:index, :show] do
      resources :supplies, only: [:index]
  end

  resources :supplies, only: [:index]
end
