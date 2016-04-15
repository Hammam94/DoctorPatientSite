class CreateXRays < ActiveRecord::Migration
  def change
    create_table :x_rays do |t|
      t.text :rays_name, null: false
      t.text :results, null: false
      t.text :comments, null:false
      t.integer :record_id, null:false

      t.timestamps null: false
    end
  end
end
