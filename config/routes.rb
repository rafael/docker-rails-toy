Rails.application.routes.draw do
  get "redis" => "welcome#redis"
  get "redis_incr" => "welcome#redis_incr"
  root 'welcome#index'
end
