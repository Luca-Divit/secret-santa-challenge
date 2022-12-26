class CreateMatches < ActiveRecord::Migration[7.0]
  def change
    create_table :matches do |t|
      t.references :draws, null: false, foreign_key: true
      t.references :giver, null: false, foreign_key: { to_table: :partecipants }
      t.references :receiver, null: false, foreign_key: { to_table: :partecipants }

      t.timestamps
    end
  end
end
