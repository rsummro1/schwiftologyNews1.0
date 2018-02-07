Rails.application.routes.draw do
  
  devise_for :users
  resources :submissions do
    member do
      put "Like", to: "submission#upvote"
      put "Dislike", to: "submission#downvote"
    end
    resources :comments 
  end
  root to: "submissions#index"

 
end
