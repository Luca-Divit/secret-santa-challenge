class RemoveDrawPartecipantsTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :draw_partecipants
  end
end
