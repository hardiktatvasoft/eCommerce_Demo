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
    column :price
    column :description
    column :category
    column :image do |prod|
      if prod.image.present?
        img src: prod.image, height:75, width:75
      else

      end
    end
    actions
  end


  show do
      attributes_table  do
        row :name
        row :price
        row :description
        row :category
        row :image do |prod|
          image_tag prod.image, height: 250, width: 250
        end
     end
 end
  
end
