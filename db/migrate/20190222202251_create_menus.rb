class CreateMenus < ActiveRecord::Migration[5.2]
  def change
    create_table :menus do |t|
      t.string :name
      t.string :image_url
      t.decimal :price

      t.timestamps
    end
  end
end
