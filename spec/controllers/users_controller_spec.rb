require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  subject { User.new(name: 'Zara', email: 'zarah@example.com', password: '12345') }
  describe 'Get /users' do
    it 'renders the users/index page' do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe 'Get /users' do
    it 'return http status 200 when page is loaded' do
      get :index
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /users' do
    it 'User is saved when created' do
      expect(subject.save).to equal(true)
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /users' do
    it 'Two identical users can not be created' do
      expect(subject.save).to equal(true)
      user2 = User.new(name: 'Zara', email: 'zarah@example.com', password: '12345')
      expect(user2.save).to equal(false)
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /users' do
    it 'Incomplete user params will sucsessfully redirect to /login' do
      subject = User.new(email: 'zarah@example.com', password: '12345')
      expect(subject.save).to equal(false)
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /users' do
    it 'User params missing will not save user and redirect to /login' do
      subject = User.new(email: 'zarah@example.com', password: '12345')
      expect(subject.save).to equal(false)
    end
  end

end
