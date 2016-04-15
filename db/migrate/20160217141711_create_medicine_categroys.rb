class CreateMedicineCategroys < ActiveRecord::Migration
  def change
    create_table :medicine_categroys do |t|
      t.text :name

      t.timestamps null: false
    end
  end
end
