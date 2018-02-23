class CreateOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :offers do |t|
      t.string :name
      t.string :advertiser
      t.float :payout

      t.timestamps
    end
  end
end
