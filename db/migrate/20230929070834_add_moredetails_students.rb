class AddMoredetailsStudents < ActiveRecord::Migration[7.0]
  def change
    add_column :students,:email,:string
    add_column :students,:age,:integer
    add_column :students,:address,:string
  end
end
