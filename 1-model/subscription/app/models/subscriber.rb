class Subscriber < ApplicationRecord
    validates :name, presence: true, length: {in: 2..45}
    validates :contact_num, presence: true
    validates_numericality_of :contact_num, on: :create
    validates :is_enabled, presence: true, inclusion: { in: %w(0 1), message: "Must be 0 or 1"}
end
