ActiveAdmin.register User do
 
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  menu label: "Клиенты", priority: 1

  permit_params :name, :surname, :email, :password, :password_confirmation, :role
 
    index :title => "Клиенты" do
        selectable_column
        column "Имя",                   :name
        column "Фамилия",               :surname
        column "e-mail",                :email
        column "Роль",                  :role
        column "Текущий сеанс",         :current_sign_in_at
        column "Последний вход",        :last_sign_in_at
        column "Количество входов",     :sign_in_count
        actions
    end
 
    filter :email
 
    form do |f|
        f.inputs "Данные клиента" do
            f.input :name,              label: "Имя"
            f.input :surname,           label: "Фамилия"
            f.input :email,             label: "e-mail"
            f.input :role,              label: "Роль"
            f.input :role,              label: "Роль", as: :radio, collection: {Guest: "none", Customer: "user", Administrator: "admin"}
            f.input :password,          label: "Пароль"
            f.input :password_confirmation, label: "Подтверждение"
        end
        f.actions
    end
 
end