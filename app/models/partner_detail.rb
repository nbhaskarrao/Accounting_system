class PartnerDetail < ApplicationRecord
  validates :partner_name, presence: true
  validates :amount,presence: true
  validates :description,presence: true
  end
