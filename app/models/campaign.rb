class Campaign < ActiveRecord::Base
  has_many :payments
  has_many :users, through: :payments

  validates :description,  presence: true
  validates :end_date,     presence: true
  validates :funds_raised, presence: true
  validates :name,         presence: true

  def funds_raised_in_dollars
    "$#{'%.2f' % (funds_raised / 100.0)}"
  end

  def end_date_nicely
    "#{end_date.month}/#{end_date.day}/#{end_date.year}"
  end

  # include CampaignHelper
end
