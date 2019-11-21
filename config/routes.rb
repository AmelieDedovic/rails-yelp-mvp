Rails.application.routes.draw do
  get 'restaurants', to: 'restaurants#index'
  get 'restaurants/:id', to: 'restaurants#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
