class Bidder < ActiveRecord::Base
	belongs_to :home
	belongs_to :lead
end 