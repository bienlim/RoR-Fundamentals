class Forum < ApplicationRecord
    has_many :questions, dependent: :destroy
    validates :title, :description, presence:true
    has_many :creators
    has_many :users, through: :creators
    has_many :likes, as: :likeable
end
