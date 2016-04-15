class Syndicate < ActiveRecord::Base
	has_many :treatment_centers, dependent: :destroy
end
