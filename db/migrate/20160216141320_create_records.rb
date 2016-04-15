class CreateRecords < ActiveRecord::Migration
  def change
    create_table :records do |t|
      t.integer :patient_id
      t.integer :user_id
      t.integer :treatment_center_id
      t.date :Rdate
      t.text :diagnoses
      t.integer :diagnoses_type

      t.timestamps null: false
    end
  end
end
