class ChangeDataTypeFriendship < ActiveRecord::Migration[6.1]
  def change
    change_column(:friendship, :user_id, :integer)
    change_column(:friendship, :friend_id, :integer)
  end
end
