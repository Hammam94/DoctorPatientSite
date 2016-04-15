class CreateTests < ActiveRecord::Migration
  def change
    create_table :tests do |t|
      t.string :test_name, null: false
      t.integer :record_id, null: false
      t.text :results, null: false
      t.text :comments, null: false

      t.timestamps null: false
    end
  end
end
