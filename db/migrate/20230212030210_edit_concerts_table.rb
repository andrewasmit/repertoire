class EditConcertsTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :concerts, :ensemble_id, :integer
    add_column :concerts, :date, :datetime
  end
end
