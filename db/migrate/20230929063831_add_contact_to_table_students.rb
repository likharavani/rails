class AddContactToTableStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :table_students, :contact, :string
  end
end
