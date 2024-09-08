class CreateTrainings < ActiveRecord::Migration[6.1]
  def change
    create_table :trainings do |t|
      t.integer :batch
      t.date :start
      t.date :end

      t.timestamps
    end
  end
end
