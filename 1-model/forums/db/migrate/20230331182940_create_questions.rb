class CreateQuestions < ActiveRecord::Migration[7.0]
  def change
    create_table :questions do |t|
      t.references :forum, null: false, foreign_key: true
      t.text :content

      t.timestamps
    end
  end
end
