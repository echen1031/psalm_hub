require 'spec_helper'

RSpec.describe User, type: :model do
  describe 'Associations' do
    it { should have_many(:likes) }
    it { should have_many(:songs) }
  end
end
