ActiveAdmin.register Category do

  menu label: "Categories", priority: 3

  permit_params :name, :category_id


  index :title => 'Categories' do
    selectable_column
    column :name
    column :category
    column :updated_at
    actions
  end

end
