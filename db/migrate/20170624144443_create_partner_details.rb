class CreatePartnerDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :partner_details do |t|
      t.string :partner_name
      t.integer :amount
      t.boolean :credit
      t.boolean :debit
      t.text :description

      t.timestamps
    end
  end
end
