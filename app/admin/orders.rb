ActiveAdmin.register Order do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :user_id, :order_date, :address_id
  #
  # or
  #
  permit_params do
    permitted = [:user_id, :order_date, :address_id]
    permitted << :other if params[:action] == 'create' && current_admin_user
    permitted
  end
  

  index do
    id_column
    column :user
    column :order_date
    column :address
    actions
  end



end
