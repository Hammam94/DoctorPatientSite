class TreatmentCenter < ActiveRecord::Base
	belongs_to :specialization
	belongs_to :syndicate
	has_many :phones
	has_many :users
end
