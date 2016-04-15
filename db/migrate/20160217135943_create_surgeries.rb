class CreateSurgeries < ActiveRecord::Migration
  def change
    create_table :surgeries do |t|
      t.text :description
      t.integer :user_id
      t.integer :patient_id
      t.date :S_date
      t.text :place

      t.timestamps null: false
    end
  end
end
