class CreateTableStudents < ActiveRecord::Migration[7.0]
  def change
    create_table :table_students do |t|
      t.string :name
      t.integer :standard

      t.timestamps
    end
  end
end
