class Offer < ApplicationRecord
  validates :payout, presence: true, numericality: true
  validate :payout_grater_zero
  belongs_to :user

  private

  def payout_grater_zero
    self.payout && self.payout > 0 ? true : false
  end
end
