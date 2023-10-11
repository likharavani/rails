class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.belongs_to :department, index: true, foreign_key: true
      t.timestamps
    end
  end
end
