class Home < ActiveRecord::Base
	has_many :bidders
	has_many :leads, through: :bidders, source: :lead 
end 