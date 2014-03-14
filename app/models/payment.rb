class Payment < ActiveRecord::Base
  belongs_to :campaign
  belongs_to :user

  validates :campaign_id, presence: true
  validates :user_id,     presence: true
  validates :amount,      presence: true
  validates :comment,     presence: true
  validates :date,        presence: true
end
