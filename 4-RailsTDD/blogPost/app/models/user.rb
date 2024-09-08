class User < ApplicationRecord
    validates :username, :password, :presence => true
    validates :username, uniqueness: { case_sensitive: false }
end
