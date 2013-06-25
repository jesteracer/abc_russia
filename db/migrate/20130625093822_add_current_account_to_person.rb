class AddCurrentAccountToPerson < ActiveRecord::Migration
  def change
    add_column :people, :current_account, :decimal
  end
end
