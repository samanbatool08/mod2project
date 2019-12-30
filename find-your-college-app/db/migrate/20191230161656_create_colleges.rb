class CreateColleges < ActiveRecord::Migration[6.0]
  def change
    create_table :colleges do |t|
      t.string :name
      t.integer :rank
      t.integer :size
      t.string :category
      t.string :location

      t.timestamps
    end
  end
end
