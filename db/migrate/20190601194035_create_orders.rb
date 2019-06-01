class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.string :status
      t.float :total
      t.string :shipment_address
      t.string :shipment_city
      t.string :shipment_state
      t.string :shipment_country
      t.string :shipment_zip
      t.string :shipment_telephone
      t.string :billing_address
      t.string :billing_city
      t.string :billing_state
      t.string :billing_country
      t.string :billing_zip
      t.string :billing_telephone
      t.string :note

      t.timestamps
    end
  end
end
