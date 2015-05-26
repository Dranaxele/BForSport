class CreateJoueurs < ActiveRecord::Migration
  def change
    create_table :joueurs do |t|
      t.integer :id_joueur
      t.integer :id_equipe
      t.string :joueur_name
      t.string :joueur_lastname

      t.timestamps null: false
    end
  end
end
