json.extract! partner_detail, :id, :partner_name, :amount, :credit, :debit, :description, :created_at, :updated_at
json.url partner_detail_url(partner_detail, format: :json)
