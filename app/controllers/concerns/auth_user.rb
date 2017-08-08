module AuthUser
	extend ActiveSupport::Concern
	
	def current_user
		@current_user ||= User.find(session[:user_id]) unless session[:user_id].nil?	
	end

	def user_signed_in?
		current_user
	end

	def user_sign_out!
		session.delete :user_id
	end

	def user_auth?
		user = User.find_by(name: params[:user][:name])
		if user && user.authenticate(params[:user][:password])
			session[:user_id] = user.id
			current_user
		end
	end
end
