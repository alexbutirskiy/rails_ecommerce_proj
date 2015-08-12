require 'rails_helper'

RSpec.describe Order, type: :model do

  all_resources = ActiveAdmin.application.namespaces[:admin].resources

  it "should have User resource included in menu" do
    expect(all_resources[:User].resource_name).to eq 'User'
    expect(all_resources[:User]).to be_include_in_menu
  end

  it "should have Product resource included in menu" do
    expect(all_resources[:Product].resource_name).to eq 'Product'
    expect(all_resources[:Product]).to be_include_in_menu
  end

end
