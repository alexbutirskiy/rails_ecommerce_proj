require 'rails_helper'

RSpec.describe CartController, type: :controller do

  describe "GET #index unauthorized" do
    it "returns http success" do
      get :index

      expect(response).to have_http_status(302)

    end
  end

  # describe "GET #index authorized" do
  #   it "returns http success" do
  #     get :index

  #     expect(response).to have_http_status(:success)
  #   end
  # end

end
