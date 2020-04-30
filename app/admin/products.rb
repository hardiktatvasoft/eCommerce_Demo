ActiveAdmin.register Product do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
   permit_params :name, :price, :description, :category_id, :image
  #
  # or
  #
  permit_params do
    permitted = [:name, :price, :description, :category_id, :image]
    permitted << :other if params[:action] == 'create' && current_admin_user
    permitted
  end

  index do
    id_column
    column :name
    column :price do |prod|
       number_to_currency prod.price
    end
    column "Description" do |prod|
        simple_format prod.description
    end
    column :category
    column :image do |prod|
      if prod.image.present?
        img src: prod.image.thumb
      end
    end
    actions
  end


  filter :name
  filter :price
  filter :category
  
  show do
      attributes_table  do
        row :name
        row :price        
        row :description do
             simple_format product.description
        end      
        row :image do |prod|
          if prod.image.present? 
            image_tag prod.image, height: 250, width: 250
          end
        end
     end
  end


  form do |f|
    f.inputs 'Product' do
      f.input :name
      f.input :price
      f.input :description, as: :quill_editor
      f.input :category
      f.input :image
    end
    f.actions
  end
  
end
