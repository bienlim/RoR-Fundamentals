class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :username
      t.string :email_address
      t.string :password

      t.timestamps
    end
  end
end
