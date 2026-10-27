Rails.application.routes.draw do 
  get "up" => "rails/health#show", as: :rails_health_check 
  get "issues", to: 'issues#index'
  get "issues/new", to: 'issues#new'
  get "issues/:id", to: 'issues#show'
end
