class AddDefaultTrueToAvaliable < ActiveRecord::Migration[5.2]
  def change
    change_column :castles, :available, :boolean, default: true
  end
end
