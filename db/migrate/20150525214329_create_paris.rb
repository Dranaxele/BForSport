class CreateParis < ActiveRecord::Migration
  def change
    create_table :paris do |t|
      t.integer :id_pari
      t.references :id_match, index: true
      t.references :id_user, index: true
      t.integer :vote1
      t.integer :vote2
      t.integer :pari_pts
      t.integer :pari_status

      t.timestamps null: false
    end
    add_foreign_key :paris, :id_matches
    add_foreign_key :paris, :id_users
  end
end
