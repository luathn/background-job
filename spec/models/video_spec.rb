require "rails_helper"

RSpec.describe Video, type: :model do
  subject { FactoryBot.create :video }

  it { should validate_uniqueness_of(:url) }
end
