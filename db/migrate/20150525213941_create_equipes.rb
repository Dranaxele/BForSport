class CreateEquipes < ActiveRecord::Migration
  def change
    create_table :equipes do |t|
      t.integer :id_equipe
      t.references :id_sport, index: true
      t.string :equipe_name
      t.integer :equipe_nb

      t.timestamps null: false
    end
    add_foreign_key :equipes, :id_sports
  end
end
