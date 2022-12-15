class CreateDrawPartecipants < ActiveRecord::Migration[7.0]
  def change
    create_table :draw_partecipants do |t|
      t.references :draw, null: false, foreign_key: true
      t.references :partecipant, null: false, foreign_key: true

      t.timestamps
    end
  end
end
