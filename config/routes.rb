Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "/users/:id", to: "users#show"
  post "/users", to: "users#create"
  delete "/users/:id", to: "users#destroy"
  patch "/users/:id", to: "users#update"
  get "/users/more-tickets-boughts", to:"users#more_tickets_boughts"

  get "/tickets/:id", to: "tickets#show"
  post "/tickets", to: "tickets#create"
  delete "/tickets/:id", to: "tickets#destroy"
  patch "/tickets/:id", to: "tickets#update"
  get "/tickets/most-expensives", to:"tickets#most_expensives"

  get "/places/:id", to: "places#show"
  post "/places", to: "places#create"
  delete "/places/:id", to: "places#destroy"
  patch "/places/:id", to: "places#update"
  get "/places/more-assistance", to:"places#more_assistance"

  get "/events/:id", to: "events#show"
  post "/events", to: "events#create"
  delete "/events/:id", to: "events#destroy"
  patch "/events/:id", to: "events#update"
  get "/events/more-bought-less-paid", to:"events#more_bought_less_paid"
end
