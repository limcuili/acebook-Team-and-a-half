# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do
  subject { Post.new }
  it"does not post if the message field is nil" do
    subject.message = nil
    expect(subject).to_not be_valid
  end

  it"does not post if the message field is nil" do
    subject.message = 'Hello World'
    subject.user_name = "Mo"
    expect(subject).to be_valid
  end

end
