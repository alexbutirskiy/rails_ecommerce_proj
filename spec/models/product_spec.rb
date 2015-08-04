require 'rails_helper'

RSpec.describe Product, type: :model do
  before { @product = Product.new }

  subject { @product }

  it { should respond_to(:name) }
  it { should respond_to(:price) }
  it { should respond_to(:count) }
end
