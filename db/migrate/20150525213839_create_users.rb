class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :id_user
      t.string :user_name
      t.string :user_lastname
      t.string :user_login
      t.string :user_password
      t.integer :user_score
      t.date :user_lastconnect

      t.timestamps null: false
    end
  end
end
