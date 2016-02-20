class Meal < ActiveRecord::Base
	has_one :order
end
