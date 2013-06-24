class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.belongs_to :person

      t.timestamps
    end
    add_index :photos, :person_id
  end
end
