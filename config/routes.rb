Rails.application.routes.draw do
  get 'welcome/index'

  resources :events do
    resources :attendances
  end

  root 'welcome#index'
end
