class CreateCollegeActivities < ActiveRecord::Migration[6.0]
  def change
    create_table :college_activities do |t|
      t.integer :college_id
      t.integer :activity_id

      t.timestamps
    end
  end
end
