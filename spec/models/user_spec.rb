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
    
    it 'fails when emails are not unique (not case sensitive)' do
      User.create(
        :first_name => "lhouse", 
        :last_name => "lab", 
        :email => "LIGHTHOUSE@labs.com",
        :password => "23456",
        :password_confirmation => "23456"
      )
      expect(subject).not_to be_valid
      expect(subject.errors).not_to be_empty
    end

    it 'is not valid when first name is missing' do
      subject.first_name = nil
      expect(subject).not_to be_valid
      expect(subject.errors).not_to be_empty
    end
  
    it 'is not valid when last name is missing' do
      subject.last_name = nil
      expect(subject).not_to be_valid
      expect(subject.errors).not_to be_empty
    end

    it 'is not valid when password and password_confirmation is short than 4 characters' do
      subject.password = "123"
      subject.password_confirmation = "123"
      expect(subject).not_to be_valid
      expect(subject.errors).not_to be_empty
    end
  end
end
