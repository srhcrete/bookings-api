require 'rails_helper'

RSpec.describe Host, type: :model do
  it { should belong_to(:user) }
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:location) }
end
