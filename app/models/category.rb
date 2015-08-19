class Category < ActiveRecord::Base
  validates :name, presence: true
  belongs_to :category
  has_many :categories
  has_many :products
end
