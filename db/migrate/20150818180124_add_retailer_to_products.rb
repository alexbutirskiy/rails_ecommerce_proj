class AddRetailerToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :retailer, index: true, foreign_key: true
  end
end
