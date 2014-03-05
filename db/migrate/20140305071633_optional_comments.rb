class OptionalComments < ActiveRecord::Migration
  def change
    change_column :payments, :comment, :text, null:false, default: ''
  end
end
