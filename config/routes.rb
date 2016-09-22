Rails.application.routes.draw do






  resources :posts
  devise_for :users, :controllers => { registrations: 'registrations' }

  root 'pages#index'

  get 'pages/index'

  get 'pages/Budowa'

  get 'pages/Zapis_Nutowy'

  get 'pages/Jak_grac'

  get 'pages/Symulator'

  get 'pages/O_projekcie'

  get 'pages/Podstawy'

  get 'pages/Gotowe_rytmy'

  get 'pages/Czysta_przyjemnosc'
  
  get 'pages/Usersi'
  
  get 'pages/SymulatorS'
  
  put 'pages/make_admin/:id' => 'pages#make_admin', :as => "make_admin"
  
  put 'pages/take_admin/:id' => 'pages#take_admin', :as => "take_admin"

  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
