class Create < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.column :product_id, :integer
      t.column :comment, :string
      t.column :user_id, :integer
    end
  end
end
