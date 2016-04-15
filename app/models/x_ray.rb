class XRay < ActiveRecord::Base
	belongs_to :record
	belongs_to :patient
end
