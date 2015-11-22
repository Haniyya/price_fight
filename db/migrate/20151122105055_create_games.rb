class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.references :rounds, index: true, foreign_key: true
      t.references :players, index: true, foreign_key: true
      t.integer :number_of_players
      t.references :winner, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
