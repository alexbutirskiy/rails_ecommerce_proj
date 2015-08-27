ActiveAdmin.register User do
 
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters

  menu label: "Users", priority: 1

  permit_params :name, :surname, :email, :password, :password_confirmation, :role
 
    index :title => "Users" do
        selectable_column
        column :name
        column :surname
        column :email
        column :role
        column :current_sign_in_at
        column :last_sign_in_at
        column :sign_in_count
        actions
    end
 
    filter :email
 
    form do |f|
        f.inputs "User " do
            f.input :name,              label: "Name"
            f.input :surname,           label: "Surname"
            f.input :email,             label: "e-mail"
            f.input :role,              label: "Role"
            f.input :role,              label: "Role", as: :radio, collection: {Guest: "none", Customer: "user", Administrator: "admin"}
            f.input :password,          label: "Password"
            f.input :password_confirmation, label: "Password confirmation"
        end
        f.actions
    end
 
end