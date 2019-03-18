class CreateRentals < ActiveRecord::Migration[5.2]
  def change
    create_table :rentals do |t|
      t.references :castle, foreign_key: true
      t.string :status
      t.integer :total_price
      t.date :starts_on
      t.date :ends_on

      t.timestamps
    end
  end
end
