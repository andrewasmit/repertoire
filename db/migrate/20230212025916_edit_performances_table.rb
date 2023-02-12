class EditPerformancesTable < ActiveRecord::Migration[6.1]
  def change
    remove_column :performances, :date_of_performance, :datetime
    add_column :performances, :ensemble_id, :integer
    add_column :performances, :concert_id, :integer
  end
end
