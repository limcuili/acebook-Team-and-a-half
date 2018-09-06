require 'rails_helper'


RSpec.describe User, type: :model do
  subject { User.new }
  it "is valid with valid ttributes" do
    subject.id = '1'
    subject.name = 'Mo'
    subject.email = "mo@example.com"
    subject.password = '44444'
    subject.password_digest = '44444'
    expect(subject).to be_valid
  end

  it "is not valid without a name" do
    subject.email = "mo@example.com"
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without an email" do
    subject.name = 'Mo'
    subject.email = nil
    expect(subject).to_not be_valid
  end

  it "is not valid without an email" do
    subject.name = 'Mo'
    subject.password_digest = nil
    expect(subject).to_not be_valid
  end
end
