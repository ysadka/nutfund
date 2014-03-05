class AddBitcoinToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :btc_amount, :integer
  end
end
