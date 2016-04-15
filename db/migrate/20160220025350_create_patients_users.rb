class CreatePatientsUsers < ActiveRecord::Migration
  	def change
	    create_table :patients_users do |t|
	    	t.integer :user_id, null: false
	    	t.integer :patient_id, null:false
	    	
	    end
	    add_index :patients_users, :user_id
	    add_index :patients_users, :patient_id
	end
end
