class Offer < ApplicationRecord
  validates :payout, numericality true
  validate :payout_grater_zero
  belongs_to :user

  private

  def payout_grater_zero
    binding.pry
    self.payout > 0
  end
end
