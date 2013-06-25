class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.belongs_to :person
      t.decimal :amount
      t.string :direction
      t.text :about

      t.timestamps
    end
    add_index :transactions, :person_id
  end
end
