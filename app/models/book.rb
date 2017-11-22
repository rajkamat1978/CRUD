class Book < ApplicationRecord
	has_one  :author
	accepts_nested_attributes_for :author
	
end
