class AddUserColumnToForum < ActiveRecord::Migration[7.0]
  def change
    add_reference :forums, :user, null: true, foreign_key: true
  end
end
