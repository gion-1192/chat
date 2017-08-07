Rails.application.routes.draw do
  get '/', to: 'index#index'

	resource :auth ,:only => [:show, :create, :new]
	resource :chat
	get '/chat/:id/view', to: 'chats#view'
	post '/auth/login', to: 'auths#login'	
	get '/auth/logout', to: 'auths#logout'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
