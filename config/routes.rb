Rails.application.routes.draw do
  get '/' => 'recipes#meal'
  get '/recipes' => 'recipes#index'
end
