class Member < ApplicationRecord
    belongs_to :team
    validates :name, :role, presence: true
end
