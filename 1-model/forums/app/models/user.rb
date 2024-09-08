class User < ApplicationRecord
    has_many :answers 
    has_many :questions
    has_many :creators
    has_many :forums, through: :creators
    has_many :likes, as: :likeable
end
