class Product < ActiveRecord::Base
	validates :name, presence: true
	validates :price, numericality: { greater_than_or_equal_to: 0.01, allow_nil: true }
	validates :count, numericality: { greater_than: 0, allow_nil: true }
end
