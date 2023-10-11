class AddColumnToDepartments < ActiveRecord::Migration[7.0]
  def change
    add_column :departments, :department_id, :integer
  end
end
