class User < ApplicationRecord

    validates :username, :session_token, presence: true
    validates :password_digest, presence: true, message: "Password can't be blank"
    validates :password_digest, allow_nil: true 
    
    def 
end
