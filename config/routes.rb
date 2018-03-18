Rails.application.routes.draw do
  devise_for :users
  resources :subjects do    
    resources :grades
    get 'students_add'
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'subjects#index'
end
