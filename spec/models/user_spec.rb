require 'rails_helper'

RSpec.describe User, type: :model do
  subject { User.new(id: '1', name: 'Mo', email: 'mo@example.com', password: '4444', password_digest: "4444") }
  it 'is valid with valid ttributes' do
    expect(subject).to be_valid
  end

  it 'is not valid without a name' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an email' do
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it 'is not valid without an email' do
    subject.password_digest = nil
    expect(subject).to_not be_valid
  end
end
