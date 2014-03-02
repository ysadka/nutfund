require 'spec_helper'

describe Campaign, 'associations' do
  it { expect(subject).to have_many(:payments) }
  it { expect(subject).to have_many(:users) }
end

describe Campaign, 'validations' do
  it { expect(subject).to validate_presence_of(:name) }
  it { expect(subject).to validate_presence_of(:end_date) }
  it { expect(subject).to validate_presence_of(:funds_raised) }
  it { expect(subject).to validate_presence_of(:description) }
end
