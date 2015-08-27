ActiveAdmin.register Feedback do

  menu label: "Feedbacks", priority: 6

  permit_params :msg, :subj


  index :title => 'Feedbacks' do
    selectable_column
    column :subj
    column :msg
    actions
  end

end