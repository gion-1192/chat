module AuthsHelper

	include AuthUser

	def login_status
		if user_signed_in?
			"ログイン中"
		else 
			"ログイン未"
		end
	end

end
