class CreateTotals < ActiveRecord::Migration[5.2]
  def change
    create_table :totals do |t|
      t.integer :t_invoices, null: false
      t.integer :t_amt, null: false

      t.timestamps
    end
  end
end
