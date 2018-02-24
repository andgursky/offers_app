class Offer < ApplicationRecord
  validates :payout, presence: true, numericality: true
  validate :payout_grater_zero
  belongs_to :user

  private

  def payout_grater_zero
    payout && payout.positive? ? true : false
    errors.add(:base, :emutable)
  end
end
