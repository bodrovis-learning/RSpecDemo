class Post < ApplicationRecord
  belongs_to :user, optional: true

  validates :body, presence: true
end
