class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.integer :id_match
      t.references :id_sport, index: true
      t.string :match_name
      t.date :match_date
      t.string :match_lieu
      t.integerid_equipe2 :id_equipe1
      t.string :match_status
      t.integer :score_equipe1
      t.integer :score_equipe2

      t.timestamps null: false
    end
    add_foreign_key :matches, :id_sports
  end
end
