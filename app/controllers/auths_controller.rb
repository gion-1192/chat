class AuthsController < ApplicationController
  include AuthUser
	
	def show
		@user = User.new
	end

	def new
		@user = User.new
	end

	def create
		user = User.create(user_params)
	  session[:user_id] = user.id
	end

	def login
		if user_auth?
			redirect_to '/chat'	
			return
		end

		redirect_to '/auth/new'
	end

	def logout
		user_sign_out!
		redirect_to :action => "new"
	end

	private
		def user_params
			params.require(:user).permit(:name, :password, :password_confirmation)
		end
end
