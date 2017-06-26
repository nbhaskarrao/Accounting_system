class AddTotalToAccountDetails < ActiveRecord::Migration[5.0]
  def change
    add_column :account_details, :total, :integer
  end
end
