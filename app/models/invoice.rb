class Invoice < ApplicationRecord
  before_save :record_total_amount

  private
    def record_total_amount
      self.total_amount = Invoice.sum(&:amount)
    end
end
