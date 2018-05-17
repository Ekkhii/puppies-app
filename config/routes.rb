Rails.application.routes.draw do
  root 'home#index'

  get '/city', to: 'home#city', as: :city

  get :send_mail, to: 'home#send_mail', as: :send_mail

  get :subscribe , to: 'user#subscribe', as: :subscribe

  get :send_newsletter, to: 'home#send_newsletter', as: :send_newsletter

  get 'user/unsubscribe/:id', to: 'user#unsubscribe', as: :unsubscribe
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
