class Lead < ActiveRecord::Base
	has_many :bidders
	has_many :homes, through: :bidders, source: :home 
end 