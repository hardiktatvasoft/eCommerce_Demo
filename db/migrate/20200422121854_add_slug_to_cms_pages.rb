class AddSlugToCmsPages < ActiveRecord::Migration[5.1]
  def change
    add_column :cms_pages, :slug, :string
  end
end