class User < ApplicationRecord
    # an in built rails method that passes a password_confirmation function in the database
    has_secure_password 

    validates :email, presence: true, length: {maximum: 250}, 
                                        format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
    validates :user_handle, presence: true
    validates :password, presence: true, length: { minimum: 6, maximum: 15}
end
