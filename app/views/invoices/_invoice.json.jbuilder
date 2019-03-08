json.extract! invoice, :id, :name, :amount, :tax, :created_at, :updated_at
json.url invoice_url(invoice, format: :json)
