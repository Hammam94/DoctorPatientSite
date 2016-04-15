class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
      t.text :name
      t.text :material
      t.integer :concentration
      t.integer :medicine_category_id
      t.integer :company_id

      t.timestamps null: false
    end
  end
end
