class Invoice < ApplicationRecord
validates :name, presence: true ,uniqueness: true
validates :amount, presence: true
validates :tax, presence: true

  before_save :record_total_amount

  private
    def record_total_amount
      self.total_amount = Invoice.sum(&:amount)
    end
end
