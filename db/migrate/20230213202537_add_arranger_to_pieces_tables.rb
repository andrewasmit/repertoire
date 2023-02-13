class AddArrangerToPiecesTables < ActiveRecord::Migration[6.1]
  def change
    add_column :pieces, :arranger, :string
  end
end
