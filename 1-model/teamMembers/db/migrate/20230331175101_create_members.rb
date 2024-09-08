class CreateMembers < ActiveRecord::Migration[7.0]
  def change
    create_table :members do |t|
      t.references :team, null: false, foreign_key: true
      t.string :name
      t.string :role

      t.timestamps
    end
  end
end
