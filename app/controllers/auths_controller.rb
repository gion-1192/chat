class AuthsController < ApplicationController
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
		user = User.find_by(name: params[:user][:name])
		if user && user.authenticate(params[:user][:password])
			session[:user_id] = user.id
			redirect_to '/chat'	
			return
		end

		redirect_to '/auth/new'
	end

	def logout
		session.delete(:user_id)
		redirect_to :action => "new"
	end

	private
		def user_params
			params.require(:user).permit(:name, :password, :password_confirmation)
		end
end
