class CreateStudentActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :student_activities do |t|
      t.integer :student_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
