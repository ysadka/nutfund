class Campaign < ActiveRecord::Base
  has_many :payments
  has_many :users, through: :payments

  validates :charity,            presence: true
  validates :funds_raised,       presence: true
  validates :action_description, presence: true
  validates :action,             presence: true
  validates :charity_link,       presence: true

  def funds_raised_in_dollars
    "$#{'%.2f' % (funds_raised / 100.0)}"
  end

  include CampaignHelper
end
