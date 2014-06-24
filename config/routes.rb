Rails.application.routes.draw do
  get "redis" => "welcome#redis"
  root 'welcome#index'
end
