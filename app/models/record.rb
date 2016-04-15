class Record < ActiveRecord::Base
	has_many :tests
	has_many :x_rays, dependent: :destroy 
	has_and_belongs_to_many :medicines
	belongs_to :patient
	belongs_to :user

	after_validation(on: :create) do
  		number = self.patient_id.to_s(10)
  		self.patient_id = Patient.find_by_national_id(number.encrypt(:symmetric, :password => 'secret_key')).id
	end
end
