class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :name , null: false
      t.decimal :height, precision: 8, scale: 2, null: false
      t.decimal :weight ,precision: 8, scale: 2, null: false
      t.string :address
      t.string :national_id, unique: true , null: false

      t.timestamps null: false
    end
  end
end
