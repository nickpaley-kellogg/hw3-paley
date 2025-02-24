Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # get("/", { :controller => "articles", :action => "index" })

  
    get("/places", {:controller => "places", :action => "index"})
    get("/entries", {:controller => "entries", :action => "index"})

    resources "places"

    resources "entries"
end

Rails.application.routes.draw do
  resources :places do
    resources :entries, only: [:new, :create]
  end
  root 'places#index'
end