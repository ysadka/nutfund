class CreatePayments < ActiveRecord::Migration
  def change
    create_join_table :campaigns, :users, table_name: :payments do |t|
      t.index :campaign_id
      t.index :user_id
    end
  end
end
