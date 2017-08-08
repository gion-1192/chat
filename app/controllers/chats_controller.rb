class ChatsController < ApplicationController
	include AuthUser
	before_action :login_user!

	def show
	end

	def new
		@chat = Chat.new	
	end

	def create
		chat = Chat.create(:title => params[:chat][:title])
		redirect_to %Q{/chat/#{chat.id}/view}
	end

	def view
		@id = params[:id]
		@user = session[:user_id]
	end

	private
	
	def login_user!
		redirect_to '/' unless user_signed_in?
	end
end
