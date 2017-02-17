class AddAttachment < ActiveRecord::Migration[5.0]
  def change
    remove_column :products, :image
    add_attachment :products, :image
  end
end
