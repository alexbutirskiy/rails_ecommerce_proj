require 'rails_helper'

RSpec.describe Product, type: :model do
  before do 
    @cat = create(:category)
    @product = create(:product, category_id: @cat.id) 
  end

  subject { @product }

  it { should respond_to(:name) }
  it { should respond_to(:price) }
  it { should respond_to(:count) }


end
