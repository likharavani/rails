class RenameColumnToStudents < ActiveRecord::Migration[7.0]
  def change
    rename_column :students,:confirm_email,:email_confirmation

  end
end
