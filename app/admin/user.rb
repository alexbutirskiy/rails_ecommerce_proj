ActiveAdmin.register User do


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

  menu label: "Клиенты", priority: 1

  permit_params :name, :surname, :email, :role

  index :title => "Клиенты" do
    selectable_column
    column "Имя",                   :name
    column "Фамилия",               :surname
    column "e-mail",                :email
    column "Роль",                  :role
    actions
  end

  form do |f|
    f.inputs "Данные клиента" do
      f.input :name,    label: "Имя"
      f.input :surname, label: "Фамилия"
      f.input :email,   label: "e-mail"
      f.input :role,    label: "Роль"
    end
    actions
  end

end
