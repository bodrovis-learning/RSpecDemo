class User < ApplicationRecord
  validates :email, presence: true#, email: true
  validates :name, presence: true
  validates :password_digest, presence: true

  has_many :posts

  has_secure_password
end
