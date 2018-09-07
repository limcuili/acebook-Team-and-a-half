require 'rails_helper'

RSpec.describe Comment, type: :model do
  post = Post.new(user_name: 'Mo', message: 'Hello World')
  subject { post.comments.new(body: "hey hey hey") }

  it "is valid with all the params" do
    post.save
    expect(subject).to be_valid
  end

  it "is not valid if params are incorrect" do
    post = Post.new(user_name: 'Jo', message: 'Hello World')
    post.save
    subject = post.comments.new(body: "")
    expect(subject).to_not be_valid
  end
end
