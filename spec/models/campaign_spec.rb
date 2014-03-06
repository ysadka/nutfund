require 'spec_helper'

describe Campaign, 'associations' do
  it { expect(subject).to have_many(:payments) }
  it { expect(subject).to have_many(:users) }
end

describe Campaign, 'validations' do
  it { expect(subject).to validate_presence_of(:charity) }
  it { expect(subject).to validate_presence_of(:funds_raised) }
  it { expect(subject).to validate_presence_of(:action_description) }
  it { expect(subject).to validate_presence_of(:action) }
  it { expect(subject).to validate_presence_of(:charity_link) }
end
