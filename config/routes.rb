Rails.application.routes.draw do
  get "/cows" => "cows#index"
  get "/cows/:id" => "cows#show"
end
