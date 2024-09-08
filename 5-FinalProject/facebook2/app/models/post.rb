class Post < ApplicationRecord
  belongs_to :user
  validates :content, presence: true, length: { minimum: 10 }
  validates :user_id, presence: true
end
