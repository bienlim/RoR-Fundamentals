class Answer < ApplicationRecord
  belongs_to :question
  has_many :answers, dependent: :destroy
  validates :content, presence:true, length: {in:(15..45)}
  has_many :likes, as: :likeable
end
