class CreateCmsPages < ActiveRecord::Migration[5.1]
  def change
    create_table :cms_pages do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
