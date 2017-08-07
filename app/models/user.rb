class User < ApplicationRecord
	has_secure_password(valiations: false)
end
