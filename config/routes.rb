Rails.application.routes.draw do
  resources :employments
  resources :document_types
  resources :invoices do
    resources :installments
    get 'my_invoices', on: :collection
  end  
  
  resources :bank_checks do
      get 'my_bank_checks', on: :collection
    get 'pendings', on: :collection
    get 'solicitation', on: :collection
  end  
  
  resources :plan_tables do
    resources :readjustments
  end  
  
  resources :people do
    resources :accessions
    post 'dependents', on: :member
  end
  
  resources :analyzes 
  resources :cities
  resources :countries
  resources :menu_items
  resources :phone_types
  resources :places
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
