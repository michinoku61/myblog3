Rails.application.routes.draw do
  devise_for :users
  root 'tweets#index'
  resources :tweets, only:[:index, :new, :show, :edit, :create, :delete] do
    collection do
      get 'photo'
    end
  end

  resources :blogs, only:[:index]
end
