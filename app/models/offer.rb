class Offer < ApplicationRecord
  validates :payout, presence: true, numericality: true
  validate :payout_grater_zero
  belongs_to :user

  private

  def payout_grater_zero
    errors.add(:base, :emutable) unless payout && payout.positive?
  end
end
