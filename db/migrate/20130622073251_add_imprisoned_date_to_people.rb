class AddImprisonedDateToPeople < ActiveRecord::Migration
  def change
    add_column :people, :imprisoned_date, :date
    add_column :people, :release_date, :date
  end
end
