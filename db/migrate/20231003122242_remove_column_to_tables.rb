class RemoveColumnToTables < ActiveRecord::Migration[7.0]
  def change
    remove_column :employees, :department
    remove_column :employees, :employee_id
    remove_column :departments , :department_id
  end
end
