class CreatePerformanceTable < ActiveRecord::Migration[6.1]
  def change
    create_table :performances do |t|
      t.datetime :date_of_performance
      t.integer :piece_id
    end
  end
end
