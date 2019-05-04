class Employees < ActiveRecord::Migration[5.2]
  def change
    create_table :employees do |t|
      t.string :name
      t.boolean :active
      t.belongs_to :department, index: true
      t.timestamps
    end
  end
end
