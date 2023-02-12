class ChangeDateToYear < ActiveRecord::Migration[6.1]
  def change
    remove_column :concerts, :date, :datetime
    # add_column :concerts, :year, :integer
  end
end
