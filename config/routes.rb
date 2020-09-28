Rails.application.routes.draw do
  
  resources :bank_accounts
  resources :providers
  resources :banks
  resources :tasks
  resources :task_types
  resources :stages
  
  resources :constructions do
    resources :tasks
  end 

  resources :construction_types
  resources :taxes
  resources :deductions
  resources :benefits
  resources :benefit_types
  resources :employments
  resources :document_types
  
  resources :people do
    resources :employments    
  end
  
  resources :analyzes 
  resources :cities
  resources :countries
  resources :menu_items
  resources :phone_types
  resources :occupations
  resources :settings
  resources :states
  resources :users
  resources :workplaces
  
  devise_for :users, path: 'u'

  post 'utils/postal_code'
  post 'utils/cities'
  get 'utils/cities'

  root 'people#index'
  mount Crono::Web, at: '/crono'
end
