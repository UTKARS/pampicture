ActiveAdmin.register Province do
  batch_action :destroy, false
  
  index do
    column :name
    column :pst, :sortable => :pst do |product|
      number_to_percentage(product.pst * 100, :precision => 2)
    end
    column :gst, :sortable => :gst do |product|
      number_to_percentage(product.gst * 100, :precision => 2)
    end
    column :hst, :sortable => :hst do |product|
      number_to_percentage(product.hst * 100, :precision => 2)
    end
  default_actions
  end
end
