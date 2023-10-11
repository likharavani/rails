class AddStandardToTableStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :table_students, :age, :integer
  end
end
