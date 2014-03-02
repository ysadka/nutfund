class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.string  :name,         null: false
      t.date    :end_date,     null: false
      t.integer :funds_raised, null: false
      t.text    :description,  null: false

      t.timestamps
    end
  end
end
