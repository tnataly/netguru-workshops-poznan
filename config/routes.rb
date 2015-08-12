Rails.application.routes.draw do
  devise_for :users
  resources :students do
    get :subjects
  end

  resources :teachers

  get '/subjects' => 'reports#subjects', as: 'report_subjects'

  resources :reports do
    get :subjects
  end

  root 'visitors#index'

end
