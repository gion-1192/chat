class ChatsController < ApplicationController
	def show
		if session[:user_id].nil?
			redirect_to '/'
			return
		end

		@chat = Chat.all
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
	end
end
