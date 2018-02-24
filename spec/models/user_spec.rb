require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:bands).dependent(:destroy) }
  it { should have_many(:hosts).dependent(:destroy) }
  it { should validate_presence_of(:email) }
  it { should validate_presence_of(:password) }
end
