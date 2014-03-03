class AddPaymentInfo < ActiveRecord::Migration
  def up
    add_column :payments, :date,   :date, null: false
    add_column :payments, :amount, :integer, null: false
    add_column :payments, :comment,        :text, null: false
  end

  def down
    remove_column :payments, :date
    remove_column :payments, :amount
    remove_column :payments, :comment
  end
end
