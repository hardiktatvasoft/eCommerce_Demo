ActiveAdmin.register OrderProduct, as: "Order Details" do
    menu label: "Order Details"
    actions :all, except: [:new,:edit,:destroy]

  # See permitted parameters documentation:
  # https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
  #
  # Uncomment all parameters which should be permitted for assignment
  #
  permit_params :order_id, :product_id, :quantity
  #
  # or
  #
  permit_params do
    permitted = [:order_id, :product_id, :quantity]
    permitted << :other if params[:action] == 'create' && current_admin_user
    permitted
  end

  index do
      id_column
      column :order
      column :product
      column :quantity
      column "User" do |ord|
          ord.order.user    
      end
     
      column "Order Date" do |ord|
          ord.order.order_date
      end

      # column "Product Price" do |ord|
      #     number_to_currency ord.product.price
      # end

      column "Product Description" do |ord|
          simple_format ord.product.description
      end
      
      column "Category" do |ord|
          ord.product.category
      end
      
      column "Product image" do |ord|
          if ord.product.image.thumb.present?
            img src: ord.product.image.thumb
          end
      end

      column "Adrress" do |ord|
         ord.order.address
      end

      column "Total Price" do |ord|
        number_to_currency ord.product.price * ord.quantity
      end

      actions defaults: false do |ord|
          item "View", admin_order_detail_path(ord)
      end
  end

  
  # show :title => "Orders" do
  #   attributes_table  do
  #       row :order
  #       row :product
  #       row :quantity
  #       row "User" do |ord|
  #         ord.order.user    
  #       end

  #       row "Order Date" do |ord|
  #         ord.order.order_date
  #       end

  #       row "Product Price" do |ord|
  #           number_to_currency ord.product.price
  #       end

  #       row "Product Description" do |ord|
  #           simple_format ord.product.description
  #       end
        
  #       row "Category" do |ord|
  #           ord.product.category
  #       end
        
  #       row "Product image" do |ord|
  #           if ord.product.image.present?
  #             img src: ord.product.image
  #           end
  #       end

  #       row "Adrress" do |ord|
  #          ord.order.address
  #       end

  #       row "Total Price" do |ord|
  #          number_to_currency ord.product.price * ord.quantity
  #       end

  #   end
  # end



  show :title => "Orders" do
    panel "Order Details" do
      table_for order_details do
        column :order
        column :product
        column :quantity
        column "User" do |ord|
          ord.order.user    
        end

        column "Order Date" do |ord|
          ord.order.order_date
        end

        column "Adrress" do |ord|
           ord.order.address
        end

        column "Total Price" do |ord|
           number_to_currency ord.product.price * ord.quantity
        end
        
      end
    end
   # active_admin_comments
  end

  sidebar "Product Details", only: :show do
    attributes_table_for order_details  do
        row "Product Price" do |ord|
            number_to_currency ord.product.price
        end

        row "Product Description" do |ord|
            simple_format ord.product.description
        end
        
        row "Category" do |ord|
            ord.product.category
        end
        
        row "Product image" do |ord|
            if ord.product.image.thumb.present?
              img src: ord.product.image.thumb
            end
        end
    end
  end

  filter :order
  filter :product
  filter :quantity
  filter :product_price, :as => :numeric
  filter :order_order_date


  #filter :product_category, :as => :check_boxes 
  #filter :user 

  # filter :is_female, :label => "Gender", :as => :select, :collection => [["Female", true], ["Male", false]]
  # filter :date_of_birth
  # filter :created_at
  # filter :updated_at
end
