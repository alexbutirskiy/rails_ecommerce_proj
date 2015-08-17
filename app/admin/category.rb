ActiveAdmin.register Category do

  menu label: "Категории", priority: 3

  permit_params :name, :category_id


  index :title => 'Категории' do
    selectable_column
    column "Название",            :name
    column "Принадлежит",         :category
    column "Последнее изменение", :updated_at
    actions
  end

end
