class RefineCampaigns < ActiveRecord::Migration
  def change
    remove_column   :campaigns, :end_date
    
    add_column    :campaigns, :action,       :string, null: false, default:''
    add_column    :campaigns, :charity_link, :string,   null: false, default:''

    rename_column :campaigns, :name,        :charity
    rename_column :campaigns, :description, :action_description
  end
end
