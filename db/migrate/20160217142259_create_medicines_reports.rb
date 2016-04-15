class CreateMedicinesReports < ActiveRecord::Migration
  def change
    create_table :medicines_reports do |t|
    	t.integer :medicine_id, null: false
    	t.integer :report_id, null:false
    end
    add_index :medicines_reports, :medicine_id
    add_index :medicines_reports, :report_id
  end
end
