class AddAttrToStudents < ActiveRecord::Migration[7.0]
  def change
    add_column  :students, :confirm_email, :string
  end
end
