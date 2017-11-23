Rails.application.routes.draw do
  resources :cocktails, only: [:show, :create, :new, :index] do
    resources :doses, only: [:new, :create, :destroy]
  end
end



  # get    "/cocktails",      to: "cocktails#index"
  # get    "/cocktails",      to: "cocktails#show"
  # get    "/cocktails",      to: "cocktails#create"
  # get    "/cocktails/new",  to: "cocktails#new"
  # patch "cocktails/:id",    to: "cocktails#update"
  # delete "/cocktails/:id",  to: "cocktails#destory"

