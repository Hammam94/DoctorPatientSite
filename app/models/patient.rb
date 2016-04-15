class Patient < ActiveRecord::Base
	has_many :records, dependent: :destroy
	has_many :surgeries, dependent: :destroy
	has_many :x_rays, dependent: :destroy
	has_and_belongs_to_many :user

	validates_numericality_of :national_id
	validates_uniqueness_of :national_id

	after_validation(on: :create) do
  		self.national_id = self.national_id.encrypt(:symmetric, :password => 'secret_key')
	end
end
