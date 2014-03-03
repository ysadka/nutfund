class AddPaymentInfo < ActiveRecord::Migration
  def up
    add_column :payments, :payment_date,   :date, null: false
    add_column :payments, :payment_amount, :integer, null: false
    add_column :payments, :comment,        :text, null: false
  end

  def down
    remove_column :payments, :payment_date
    remove_column :payments, :payment_amount
    remove_column :payments, :comment
  end
end
