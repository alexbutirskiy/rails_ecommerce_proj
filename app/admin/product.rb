ActiveAdmin.register Product do


  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # permit_params :list, :of, :attributes, :on, :model
  #
  # or
  #
  # permit_params do
  #   permitted = [:permitted, :attributes]
  #   permitted << :other if resource.something?
  #   permitted
  # end

  menu label: "Товары", priority: 2

  permit_params :name, :price, :count, :category_id

  index :title => 'Товары' do
    selectable_column
    column "Наименование",        :name
    column "Категория",           :category
    column "Цена",                :price
    column "Кол-во в наличии",    :count
    column "Последнее изменение", :updated_at
    actions
  end


  form do |f|
    inputs "Свойства товара" do
      f.input :name,  label: "Наименование"
      f.input :category,  label: "Категория"
      f.input :price, label: "Цена"
      f.input :count, label: "Кол-во в наличии"
    end
    actions
  end


end
