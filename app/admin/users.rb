ActiveAdmin.register User do
  actions :all, :except => :edit

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :password, :password_confirmation
  #
  # or
  #
  permit_params do
    permitted = [:email, :password, :password_confirmation]
    permitted << :other if params[:action] == 'create' && current_admin_user
    permitted
  end

  index do
    id_column
    column :email
    actions
  end

  filter :email
  filter :current_sign_in_at
  filter :sign_in_count
  filter :created_at

  form do |f|
    f.inputs do
      f.input :email
      f.input :password
      f.input :password_confirmation
    end
    f.actions
  end
  
end
