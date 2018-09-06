# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  subject { Post.new }

  describe '#new' do
    it 'will not create a post if missing a message' do
      subject.message = nil
      expect(subject).to_not be_valid
    end
  end

  describe '#new' do
    it 'will not create a post if missing a user_name' do
      subject.user_name = nil
      expect(subject).to_not be_valid
    end
  end

  describe '#new' do
    it 'will not create a post if missing a user_name and message' do
      subject.user_name = nil
      subject.message = nil
      expect(subject).to_not be_valid
    end
  end
      # post = Post.new(message: "Hello World", user_name: "Mo")
  # describe 'POST /post' do
  #   it 'post is saved when created' do
  #
  #   end
  # end
#
#   describe 'POST /' do
#     it 'responds with 200' do
#       post :create, params: { post: { message: 'Hello, world!' } }
#       expect(response).to redirect_to(posts_url)
#     end
#
#     it 'creates a post' do
#       post :create, params: { post: { message: 'Hello, world!' } }
#       expect(Post.find_by(message: 'Hello, world!')).to be
#     end
#   end
#
#   describe 'GET /' do
#     it 'responds with 200' do
#       get :index
#       expect(response).to have_http_status(200)
#     end
#   end
end
