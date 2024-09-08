class CreateGraduates < ActiveRecord::Migration[6.1]
  def change
    create_table :graduates do |t|
      t.string :first_name
      t.string :last_name
      t.string :job_role
      t.references :training, null: false, foreign_key: true

      t.timestamps
    end
  end
end
