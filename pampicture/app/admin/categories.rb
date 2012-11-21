ActiveAdmin.register Category do
  batch_action :destroy, false
  
  index do
    column :name
    default_actions
  end
end
