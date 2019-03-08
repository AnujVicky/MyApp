class CreateHighestTransactions < ActiveRecord::Migration[5.2]
  def change
    create_table :highest_transactions do |t|
      t.integer :amount

      t.timestamps
    end
  end
end
