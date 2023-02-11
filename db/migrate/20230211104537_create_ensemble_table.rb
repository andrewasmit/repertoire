class CreateEnsembleTable < ActiveRecord::Migration[6.1]
  def change
    create_table :ensembles do |t|
      t.string :name
      t.string :grade_level
    end
  end
end
