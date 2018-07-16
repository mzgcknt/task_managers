Rails.application.routes.draw do
  get 'tasks/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # トップページの変更
  root 'tasks#index'
  get "tasks/show" => "tasks#show"
  get "tasks/new" => "tasks#new"
  get "tasks/edit" => "tasks#edit"


end
