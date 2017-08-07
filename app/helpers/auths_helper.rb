module AuthsHelper
	def login_status
		unless session[:user_id].nil?
			"ログイン中"
		else 
			"ログイン未"
		end
	end
end
