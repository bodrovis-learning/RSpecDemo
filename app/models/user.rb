class User < ApplicationRecord
  validates :email, email: true, presence: true, uniqueness: true
  validates :name, presence: true
  validates :password_digest, presence: true
end
