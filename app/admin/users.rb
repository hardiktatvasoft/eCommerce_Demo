ActiveAdmin.register User do
  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :email, :username, :firstname, :lastname, :is_female, :date_of_birth, :avatar, :avatar_cache, :remove_avatar
  #
  # or
  #
  permit_params do
    permitted = [:email, :username, :firstname, :lastname, :is_female, :date_of_birth, :avatar, :avatar_cache, :remove_avatar]
    permitted << :other if params[:action] == 'create' && current_admin_user
    permitted
  end

  index do
    id_column
    column :email
    column :username
    column :firstname
    column :lastname
    column "Gender", :is_female do |user| 
      if user.is_female == true
        "Female"
      else
        "Male"
      end
    end
    column :date_of_birth do |user|
      user.date_of_birth.to_date
    end

    column :avatar do |user|
      if user.avatar.present?
        img src: user.avatar.thumb
      end
    end

    actions
  end

  show do
      attributes_table  do
        row :email
        row :username        
        row :firstname
        row :lastname         
        row "Gender", :is_female do |user|
          if user.is_female == true
            "Female"
          else 
            "Male"
          end
        end
        row :date_of_birth do |user|
           user.date_of_birth.to_date
        end
         row :avatar do |user|
          if user.avatar.present? 
            image_tag user.avatar, height: 150, width: 150
          end
        end
     end
  end


  filter :email
  filter :firstname
  filter :lastname
  filter :username
  filter :is_female, :label => "Gender", :as => :select, :collection => [["Female", true], ["Male", false]]
  filter :date_of_birth
  filter :created_at
  filter :updated_at
  

  form do |f|
    f.inputs do
      f.input :email
      # f.input :password
      # f.input :password_confirmation
      f.input :username
      f.input :firstname
      f.input :lastname
      f.input :is_female, :label => "Gender", :as => :radio, :collection => ["Male", "Female"]
      f.input :date_of_birth, :as => :datetime_picker
      f.input :avatar
    end
    f.actions
  end
  
end
