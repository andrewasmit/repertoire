class EditPiecesTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :pieces, :timestamps, :datetime
    remove_column :pieces, :difficuly, :integer
  end
end
