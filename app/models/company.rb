class Company < ActiveRecord::Base
	has_many :bones_segments, dependent: :destroy
	has_many :medicines, dependent: :destroy
end
