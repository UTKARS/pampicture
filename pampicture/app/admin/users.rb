ActiveAdmin.register User do
  batch_action :destroy
  
  index do
    selectable_column
    column :email
    column "Registered at", :created_at
    default_actions
  end
  
  form do |f|
    f.inputs "New User" do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    
    f.buttons
  end
  
end
