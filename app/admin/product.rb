ActiveAdmin.register Product do

  menu label: "Goods", priority: 2

  permit_params :name, :price, :count, :image, :category_id, :producer_id, :retailer_id

  index :title => 'Goods' do
    selectable_column
    column :name
    column :category
    column :producer
    column :retailer
    column :price
    column :image_file_name
    column :count
    column :updated_at
    actions
  end



  form do |f|
    inputs "Properties" do
      f.input :name,  label: "Name"
      f.input :category,  label: "Category"
      f.input :producer,  label: "Producer"
      f.input :retailer,  label: "Retailer"
      f.input :price, label: "Price"
      f.input :count, label: "Quantity"
      f.file_field :image
    end
    actions
  end


end
