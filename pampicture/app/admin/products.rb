ActiveAdmin.register Product do
  batch_action :destroy, false
  
  index do
    column "Image" do |product|
      image_tag(product.image, :width =>'90px')
    end
    column :name
    column :price, :sortable => :price do |product|
      number_to_currency product.price, :unit => "&dollar;"
    end 
    column :category
    column :stock_quantity
    column "Description" do |product|
      truncate(product.description, :length => 210)
    end
    default_actions
  end
end
