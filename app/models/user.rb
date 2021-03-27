class User < ApplicationRecord
    # an in built rails method that passes a password_confirmation function in the database
    has_secure_password 

    validates :email, presence: true
    validates :user_handle, presence: true
    validates :password, presence: true
end
