# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  subject { Post.new(user_name: 'Mo', message: "Hello World") }

  describe 'Post with missing params' do
    it 'has missing a message' do
      subject.message = nil
      subject.user_name = 'Mo'
      expect(subject).to_not be_valid
    end
  end

  describe 'Post with missing params' do
    it 'has missing a user_name' do
      subject.user_name = nil
      subject.message = 'hello'
      expect(subject).to_not be_valid
    end
  end

  describe 'Post with missing params' do
    it 'has missing a user_name and message' do
      subject.user_name = nil
      subject.message = nil
      expect(subject).to_not be_valid
    end
  end

  describe 'Post with correct params' do
    it 'will not create a post if missing a user_name and message' do
      expect(subject).to be_valid
    end
  end

  describe 'saving a post' do
    it 'saves and redirects to posts_url' do
      subject.save
      expect(response).to have_http_status(200)
    end
  end

  describe 'saving a post' do
    it 'saves and redirects to posts_url' do
      expect(subject.save).to equal(true)
    end
  end


end
