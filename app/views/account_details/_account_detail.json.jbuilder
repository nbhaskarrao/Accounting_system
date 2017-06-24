json.extract! account_detail, :id, :account_name, :amount, :credit, :debit, :description, :created_at, :updated_at
json.url account_detail_url(account_detail, format: :json)
