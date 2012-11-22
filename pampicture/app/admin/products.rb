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
    column "Stock", :stock_quantity
    column "Description" do |product|
      truncate(product.description, :length => 100)
    end
    column "Date Added:", :created_at
    column "Date Updated:", :updated_at    
    default_actions
  end
end
