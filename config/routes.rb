Rails.application.routes.draw do
  resources :recipes do
    resources :comments
  end

  # good use of nesting!

  root to: 'welcome#index'

  # yay root route!

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
