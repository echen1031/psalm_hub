require 'rails_helper'

describe Like do
  describe 'validations' do
    it { should validate_presence_of(:user_id) }
  end

  describe 'relations' do
    it { should belong_to(:song) }
    it { should belong_to(:user) }
  end
end
