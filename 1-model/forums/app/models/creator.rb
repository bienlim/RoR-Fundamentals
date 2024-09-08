class Creator < ApplicationRecord
  belongs_to :user
  belongs_to :forum
  def users
   User.where(self.user_id)
  end
end
