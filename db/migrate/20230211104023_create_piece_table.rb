class CreatePieceTable < ActiveRecord::Migration[6.1]
  def change
    create_table :pieces do |t|
      t.string :title
      t.string :composer
      t.integer :number_of_players
      t.string :genre
      t.integer :difficulty
    end
  end
end
