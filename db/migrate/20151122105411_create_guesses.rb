class CreateGuesses < ActiveRecord::Migration
  def change
    create_table :guesses do |t|
      t.references :player, index: true, foreign_key: true
      t.references :round, index: true, foreign_key: true
      t.decimal :price

      t.timestamps null: false
    end
  end
end
