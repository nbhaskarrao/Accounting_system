class AccountDetail < ApplicationRecord
  validates :account_name, presence: true
  validates :amount,presence:true
  validates :description,presence:true

end
