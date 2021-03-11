Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'contacts#index'
  post '/contact', to: 'contacts#create_contact', as: 'create_contact'
  get '/contact', to: 'contacts#index', as: 'show_form'
end

