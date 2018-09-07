require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  post = Post.new(user_name: 'Mo', message: 'Hello World')
  subject { post.comments.new(body: 'hey hey hey') }

  it 'will reder the same page if comment is blank' do
    post.comments.new(body: '')
    expect(response).to have_http_status(200)
  end

  it 'will reder the same page if there is a comment' do
    expect(response).to have_http_status(200)
  end

  it 'will reder the same page if comment is blank' do
    subject = post.comments.new(body: '')
    expect(subject.save).to equal(false)
  end

  it 'will reder the same page if comment is blank' do
    expect(subject.save).to equal(true)
  end
end
