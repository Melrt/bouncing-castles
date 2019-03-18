class AddRenterReferencesToCastles < ActiveRecord::Migration[5.2]
  def change
    add_column :castles, :renter_id, :bigint
    add_foreign_key :castles, :users, column: :renter_id
    add_index :castles, :renter_id
  end
end
