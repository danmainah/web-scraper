Rails.application.routes.draw do
  resources :vehicles do
    match '/scrape', to: 'vehicles#scrape', via: :post, on: :collection
  end

  root to: 'vehicles#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
