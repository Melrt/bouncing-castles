class AddPlayerReferencesToRentals < ActiveRecord::Migration[5.2]
  def change
    add_column :rentals, :player_id, :bigint
    add_foreign_key :rentals, :users, column: :player_id
    add_index :rentals, :player_id
  end
end
