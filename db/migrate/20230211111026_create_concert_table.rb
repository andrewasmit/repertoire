class CreateConcertTable < ActiveRecord::Migration[6.1]
  def change
    create_table :concerts do |t|
      t.string :concert_description
      t.integer :ensemble_id
    end
  end
end
