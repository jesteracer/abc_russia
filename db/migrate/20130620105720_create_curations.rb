class CreateCurations < ActiveRecord::Migration
  def change
    create_table :curations do |t|
      t.belongs_to :user
      t.belongs_to :person

      t.timestamps
    end
    add_index :curations, :user_id
    add_index :curations, :person_id
  end
end
