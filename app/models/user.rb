class User < ApplicationRecord
    # an in built rails method that passes a password_confirmation function in the database
    has_secure_password 

    validates :email, presence: true
    validates :user_handle, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
    validates :password, presence: true, length: { minimum: 6, maximum: 10}
end
