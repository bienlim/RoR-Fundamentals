class CreatePictures < ActiveRecord::Migration[7.0]
  def change
    create_table :pictures do |t|
      t.references :imageable, null: false, polymorphic: true

      t.timestamps
    end
  end
end
