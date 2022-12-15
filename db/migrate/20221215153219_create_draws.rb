class CreateDraws < ActiveRecord::Migration[7.0]
  def change
    create_table :draws do |t|
      t.string :title
      t.integer :budget
      t.date :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
