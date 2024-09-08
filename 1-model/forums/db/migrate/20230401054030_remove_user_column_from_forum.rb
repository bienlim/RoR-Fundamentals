class RemoveUserColumnFromForum < ActiveRecord::Migration[7.0]
  def change
    remove_reference :forums, :user, null: false, foreign_key: true
  end
end
