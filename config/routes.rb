Rails.application.routes.draw do
  devise_for :users
  resources :students do
    get :subjects
  end

  resources :teachers do
    get :subjects
  end

  get 'reports/subjects' => 'reports#subjects', as: 'report_subjects'
  get 'reports/payments' => 'reports#payments_all', as: 'report_payments'

  resources :reports do
    get :subjects
  end

  root 'visitors#index'

end
