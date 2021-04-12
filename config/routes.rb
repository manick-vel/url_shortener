Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  root 'home#show'

  resources :home, :only => [:show] do
    collection do
      get :shorten_url
    end
  end

  get '/:id' => "shortener/shortened_urls#show"
end
