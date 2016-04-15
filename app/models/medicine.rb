class Medicine < ActiveRecord::Base
	belongs_to :company
	belongs_to :medicine_category
end
