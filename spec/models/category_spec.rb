require 'rails_helper'

RSpec.describe Category, type: :model do
  before { @category = create(:category) }

  subject { @category }

  it { should respond_to(:name) }
  it { should respond_to(:category_id) }
end
