class CreateCastles < ActiveRecord::Migration[5.2]
  def change
    create_table :castles do |t|
      t.string :name
      t.boolean :available
      t.integer :nb_players
      t.text :description
      t.string :photo
      t.integer :day_price
      t.string :address

      t.timestamps
    end
  end
end
