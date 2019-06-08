class AddSellingToProduct < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :selling, :integer
  end
end
