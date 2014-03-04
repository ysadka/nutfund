require 'spec_helper'

describe Payment, 'associations' do
  it { expect(subject).to belong_to(:campaign) }
  it { expect(subject).to belong_to(:user) }
end

describe Payment, 'validations' do
  it { expect(subject).to validate_presence_of(:campaign_id) }
  it { expect(subject).to validate_presence_of(:user_id) }
  it { expect(subject).to validate_presence_of(:amount) }
  it { expect(subject).to validate_presence_of(:comment) }
  it { expect(subject).to validate_presence_of(:date) }
end
