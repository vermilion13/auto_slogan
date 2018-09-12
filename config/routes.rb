Rails.application.routes.draw do

  get '/top',to: 'slogans#top'

  resources :slogans do
    collection do
      post :confirm
    end
  end

  resources :sentence1s do
    collection do
      post :confirm
    end
  end

  resources :sentence2s do
    collection do
      post :confirm
    end
  end

  resources :sentence3s do
    collection do
      post :confirm
    end
  end

  resources :favorites
  resources :users

end
