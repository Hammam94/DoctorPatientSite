class CreateBonesSegments < ActiveRecord::Migration
  def change
    create_table :bones_segments do |t|
      t.text :name
      t.integer :company_id
      t.text :description

      t.timestamps null: false
    end
  end
end
