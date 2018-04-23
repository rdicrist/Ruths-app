Rails.application.routes.draw do
  resources 'contacts', only: [:new, :create], path_names: { new: '' }
  

  mount LetterOpenerWeb::Engine, at: "/letter_opener"

  mount Ckeditor::Engine => '/ckeditor'
  
  resources :events do
    get :get_events, on: :collection
  end
  devise_for :users
  
  get "/pages/:page" => "pages#show"
  
  root "pages#show", page: "home"
  
  resources :images
  
  resources :videos, only: [:index, :new, :create, :destroy]
  
  resources :messages

  resources :posts
  
end
