class CreateSports < ActiveRecord::Migration
  def change
    create_table :sports do |t|
      t.integer :id_sport
      t.string :sport_name

      t.timestamps null: false
    end
  end
end
