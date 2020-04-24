class AddBannerimageToCmsPages < ActiveRecord::Migration[5.1]
  def change
    add_column :cms_pages, :bannerimage, :string
  end
end
