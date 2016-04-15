class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.text :phone_number
      t.integer :treatment_center_id

      t.timestamps null: false
    end
  end
end
