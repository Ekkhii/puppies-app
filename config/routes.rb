Rails.application.routes.draw do
  root 'home#index'

  get "/services", to: "home#services", as: :services

  get '/city', to: 'home#city', as: :city

  get '/check_mail', to: 'home#check_mail', as: :check_mail

  get :send_mail, to: 'home#send_mail', as: :send_mail

  get :confirm_newsletter, to: 'home#confirm_newsletter', as: :confirm_newsletter

  get 'subscribe/:random_string' , to: 'user#subscribe', as: :subscribe

  get :send_newsletter, to: 'home#send_newsletter', as: :send_newsletter

  get 'user/unsubscribe/:random_string', to: 'user#unsubscribe', as: :unsubscribe
  
  post :insta, to: "home#insta", as: :insta
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
