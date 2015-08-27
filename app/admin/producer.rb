ActiveAdmin.register Producer do

  menu label: "Producers", priority: 4

  permit_params :name


  index :title => 'Producers' do
    selectable_column
    column :name
    column :updated_at
    actions
  end

end
