class CreateTreatmentCenters < ActiveRecord::Migration
  def change
    create_table :treatment_centers do |t|
      t.text :name, null: false
      t.integer :syndicate_id,  null: false
      t.text :address,  null: false
      t.integer :specialization_id, null: false
      t.integer :likes
      t.integer :dislikes

      t.timestamps null: false
    end
  end
end
