Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :movies
  get    'movies/top/page'          => 'movies#top'
  get    'movies/about/page'          => 'movies#about'
  get    'movies/emotion/page'          => 'movies#emotion'
  get    'movies/graphic/page'          => 'movies#graphic'
  root 'movies#top'
end
