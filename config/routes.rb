Rails.application.routes.draw do
  root 'home#index'

  get :send_mail, to: 'home#send_mail', as: :send_mail
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
