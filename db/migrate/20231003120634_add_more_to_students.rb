class AddMoreToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :employees ,:employee_id ,:integer
  end
end
