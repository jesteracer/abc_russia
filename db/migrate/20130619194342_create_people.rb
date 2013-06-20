class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :fio
      t.text :about
      t.date :birth_date
      t.text :accused_for
      t.text :contacts
      t.text :accounts

      t.timestamps
    end
  end
end
