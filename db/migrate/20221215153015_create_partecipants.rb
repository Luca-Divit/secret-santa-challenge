class CreatePartecipants < ActiveRecord::Migration[7.0]
  def change
    create_table :partecipants do |t|
      t.string :name

      t.timestamps
    end
  end
end
