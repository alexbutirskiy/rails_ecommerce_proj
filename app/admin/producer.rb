ActiveAdmin.register Producer do

  menu label: "Производители", priority: 4

  permit_params :name


  index :title => 'Производители' do
    selectable_column
    column "Название",            :name
    column "Последнее изменение", :updated_at
    actions
  end

end
