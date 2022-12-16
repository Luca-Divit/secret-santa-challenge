class AddForeignKeyToPartecipant < ActiveRecord::Migration[7.0]
  def change
    add_reference :partecipants, :draw, null: false, foreign_key: true
  end
end
