class Team < ApplicationRecord
    has_many :members, dependent: :destroy
    validates :name, :responsibility, presence: true, length: { in: 3..45 }
end
