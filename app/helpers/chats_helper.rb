module ChatsHelper
	include ChatProg

	def chatList
		Chat.all
	end
end
