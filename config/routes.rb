Rails.application.routes.draw do
  # STEP 1: A ROUTE triggers a controller action
  # verb "/urls" => "namespace/controllers#action"

  namespace :client do
    get '/routes/new' => 'routes#new'
    post '/routes' => 'routes#create'
  end
end
