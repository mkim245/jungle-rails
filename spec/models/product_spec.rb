require 'rails_helper'

RSpec.describe Product, type: :model do
  let(:category) {
    Category.create(:name=> "herbs")
  }
  subject {
    category.products.create(
      :name => "chives",
      :price => 100,
      :quantity => 10,
      :category => category
    )
  }
  describe 'Validations' do
    # validation tests/examples here
    it 'is valid with valid attributes' do
      expect(subject).to be_valid
      expect(subject.errors.full_messages).to be_empty
    end
    it 'is invalid without a name' do
      subject.name = nil
      expect(subject).to_not be_valid
      expect(subject.errors.full_messages).to include "Name can't be blank"
    end
    it 'is invalid without a price' do
      subject.price_cents = nil
      expect(subject).to_not be_valid
      expect(subject.errors.full_messages).to include "Price can't be blank"
    end
    it 'is invalid without a quantity' do
      subject.quantity = nil
      expect(subject).to_not be_valid
      expect(subject.errors.full_messages).to include "Quantity can't be blank"
    end
    it 'is invalid without a category' do
      subject.category = nil
      expect(subject).to_not be_valid
      expect(subject.errors.full_messages).to include "Category can't be blank"
    end
  end
end
