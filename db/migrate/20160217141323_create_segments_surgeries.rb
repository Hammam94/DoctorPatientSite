class CreateSegmentsSurgeries < ActiveRecord::Migration
  def change
    create_table :segments_surgeries do |t|
    	t.integer :segment_id, null: false
    	t.integer :surgery_id, null:false
    	
    end
    add_index :segments_surgeries, :segment_id
    add_index :segments_surgeries, :surgery_id
  end
end
