class AddProducerToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :producer, index: true, foreign_key: true
  end
end
