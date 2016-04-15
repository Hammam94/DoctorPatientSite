class CreateMedicinesRecords < ActiveRecord::Migration
  def change
    create_table :medicines_records do |t|
    	t.integer :medicine_id, null: false
    	t.integer :record_id, null:false
    	
    end
    add_index :medicines_records, :medicine_id
    add_index :medicines_records, :record_id
  end
end
