module ChatProg
	extend ActiveSupport::Concern

	def get_chat_list
		Chat.all
	end
end
