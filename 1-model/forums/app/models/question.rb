class Question < ApplicationRecord
  belongs_to :forum
  validates :content, presence:true, length: {in:(7..45)}
  has_many :likes, as: :likeable
end
