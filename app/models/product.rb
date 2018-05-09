class Product < ApplicationRecord
	has_many :variants
	belongs_to :account
end
