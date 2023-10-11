class AddMarksToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students, :marks, :integer
  end
end
