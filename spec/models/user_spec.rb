require 'rails_helper'

RSpec.describe User, type: :model do

  subject {
    # described_class.new(
      user = User.new(
      :first_name => "lighthouse",
      :last_name => "labs",
      :email => "lighthouse@labs.com",
      :password => "12345",
      :password_confirmation => "12345"
    ) 
  }
  describe 'Validations' do
    it 'should use same password and password_confirmation' do
      subject.password_confirmation = "54321"
      subject.valid?
      expect(subject.errors.full_messages).to include ("Password confirmation doesn't match Password")
    end
  end
end
