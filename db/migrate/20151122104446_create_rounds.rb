class CreateRounds < ActiveRecord::Migration
  def change
    create_table :rounds do |t|
      t.string :product_url
      t.references :winner_id, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
