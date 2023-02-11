class CreateNoteTable < ActiveRecord::Migration[6.1]
  def change
    create_table :notes do |t|
      t.string :note
      t.integer :piece_id
    end
  end
end
