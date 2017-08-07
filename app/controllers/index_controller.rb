class IndexController < ApplicationController
  def index
		unless session[:user_id].nil?
			redirect_to "/chat"
		end
  end
end
