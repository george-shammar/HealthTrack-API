require 'rails_helper'

RSpec.describe User, type: :model do
  it { should have_many(:trackers) }

  it { should validate_presence_of(:username) }
end
