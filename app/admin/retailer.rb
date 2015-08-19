ActiveAdmin.register Retailer do

  menu label: "Магазины", priority: 5

  permit_params :name


  index :title => 'Магазины' do
    selectable_column
    column "Название",            :name
    column "Последнее изменение", :updated_at
    actions
  end

end
