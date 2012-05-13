Gamedesign::Application.routes.draw do

  resources :patterns, :except => :index

  root to: 'patterns#index'
end
