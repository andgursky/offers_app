class AddUserToOffers < ActiveRecord::Migration[5.1]
  def change
    add_reference :offers, :user, foreign_key: true
  end
end
