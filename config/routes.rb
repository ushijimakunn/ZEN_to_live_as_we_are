Rails.application.routes.draw do
  root to: 'static_pages#top'
  get 'start', to: 'trial_mindfuls#start'
  get 'end', to: 'trial_mindfuls#end'
  get 'start', to: 'mindfuls#start'
  get 'end', to: 'mindfuls#end'

  # ログインユーザの瞑想実施機能
  resources :mindfuls, only: %i[index new create]
  
  #ログイン後トップページ 
  get 'menu', to: 'static_pages#menu'

  get 'login', to: 'user_sessions#new'
  post 'login', to: 'user_sessions#create'
  delete 'logout', to: 'user_sessions#destroy'

  resources :users, only: %i[new create]
  resource :profile, only: %i[show edit update]
end
