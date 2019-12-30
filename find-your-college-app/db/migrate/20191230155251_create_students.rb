class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.float :GPA
      t.string :name
      t.string :high_school
      t.string :username 

      t.timestamps
    end
  end
end
