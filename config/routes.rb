Rails.application.routes.draw do
  # This makes the first page you go to, it will land on posts 
  root to:'posts#index'
  
  # Gets the stats and before resources 
  get '/stats', to: 'posts#stats', as: 'stats'
  get '/about', to: 'static_pages#about', as: 'about'
  resources :posts
  
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
