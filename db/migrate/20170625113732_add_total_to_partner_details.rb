class AddTotalToPartnerDetails < ActiveRecord::Migration[5.0]
  def change
    add_column :partner_details, :total, :integer
  end
end
