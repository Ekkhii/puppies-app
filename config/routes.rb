Rails.application.routes.draw do
  root 'home#index'

  get :send_mail, to: 'home#send_mail', as: :send_mail

  get :subscribe , to: 'user#subscribe', as: :subscribe

  get :send_newsletter, to: 'home#send_newsletter', as: :send_newsletter
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
