require 'spec_helper'

describe User, 'associations' do
  it { expect(subject).to have_many(:campaigns) }
  it { expect(subject).to have_many(:payments) }
end

describe User, 'validations' do
  it { expect(subject).to validate_presence_of(:email) }
  it { expect(subject).to validate_presence_of(:password) }
end
