class CreateApplications < ActiveRecord::Migration[6.0]
  def change
    create_table :applications do |t|
      t.datetime :deadline
      t.string :category
      t.string :resume
      t.integer :student_id
      t.integer :college_id
      # t.belongs_to :student
      # t.belongs_to :college

      t.timestamps
    end
  end
end
