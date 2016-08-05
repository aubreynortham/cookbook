Rails.application.routes.draw do
  resources :recipes do
    resources :comments
  end


  root to: 'welcome#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
