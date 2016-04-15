class CreateMedicinesSurgeries < ActiveRecord::Migration
  def change
    create_table :medicines_surgeries do |t|
    	t.integer :medicine_id, null: false
    	t.integer :surgery_id, null:false
    end
    add_index :medicines_surgeries, :medicine_id
    add_index :medicines_surgeries, :surgery_id
  end
end
