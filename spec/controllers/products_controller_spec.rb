require 'rails_helper'

RSpec.describe ProductsController, type: :controller do

	describe "show action" do
		it "renders show template if a product is found" do
			product = create(:product)
			get :show, {id: product.id}
			response.should render_template('show')
		end

		it "renders 404 page if a product is not found" do
			get :show, {id: 0}
			response.status.should == 404
		end
	end	

	describe "create action" do
		it "redirect to product page if validations pass" do
			post :create, product: {name: "Product 1", price: '10', count: '1'}
			response.should redirect_to(product_path(assigns(:@item)))
		end

		it "renders new page again if validations fail" do
			post :create, product: {name: "Product 1", price: 0, count: 0}
			response.should render_template('new')
		end

	end

end
