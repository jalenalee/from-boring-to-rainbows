Rails.application.routes.draw do
  get 'static_pages/about'
  # This makes the first page you go to, it will land on posts 
  root to:'posts#index'
  # Gets the stats and before resources 
  get 'posts/stats'
  resources :posts
  get '/about', to: 'static_pages#about', as: 'about'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
