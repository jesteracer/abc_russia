class CreateConnections < ActiveRecord::Migration
  def change
    create_table :connections do |t|
      t.belongs_to :post
      t.belongs_to :person

      t.timestamps
    end
    add_index :connections, :post_id
    add_index :connections, :person_id
  end
end
