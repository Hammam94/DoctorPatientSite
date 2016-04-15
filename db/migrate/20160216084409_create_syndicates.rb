class CreateSyndicates < ActiveRecord::Migration
  def change
    create_table :syndicates do |t|
      t.text :name,	null: false

      t.timestamps null: false
    end
  end
end
