ActiveAdmin.register CmsPage do

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :title, :content, :slug, :bannerimage
  #
  # or
  #
  permit_params do
    permitted = [:title, :content, :slug, :bannerimage]
    permitted << :other if params[:action] == 'create' && current_admin_user
    permitted
  end


  index do
    id_column
    column :title
    column :slug
    column "Content" do |cms_page|
        simple_format truncate(cms_page.content, escape: false, length: 150)
    end
    actions
  end

  filter :title
  filter :slug
  filter :created_at
  filter :updated_at


  show do
      attributes_table  do
        row :title
        row :slug
        row :content do
            simple_format cms_page.content
        end
        row :bannerimage do |cms|
          if cms.bannerimage.present? 
            image_tag cms.bannerimage, height: 250
          end
        end     
      end
  end

  form do |f|
    f.inputs 'CmsPage' do
      f.input :title
      f.input :slug
      f.input :content, as: :quill_editor
      f.input :bannerimage
    end
    f.actions
  end
  
  
end
