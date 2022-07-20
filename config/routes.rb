Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :merchants, only: %i[index] do
    resources :items, only: %i[index], to: 'merchants#show'
  end

  resources :items, only: %i[show index]
end
