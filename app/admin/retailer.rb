ActiveAdmin.register Retailer do

  menu label: "Retailers", priority: 5

  permit_params :name


  index :title => 'Retailers' do
    selectable_column
    column :name
    column :updated_at
    actions
  end

end
