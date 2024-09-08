class CreateSubscribers < ActiveRecord::Migration[7.0]
  def change
    create_table :subscribers do |t|
      t.string :name
      t.string :contact_num
      t.binary :is_enabled

      t.timestamps
    end
  end
end
