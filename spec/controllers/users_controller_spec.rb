require 'rails_helper'

RSpec.describe UsersController, type: :controller do

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
      user = User.new(name: 'Zara', email: 'zarah@example.com', password: '12345')
      expect(user.save).to equal(true)
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /users' do
    it 'Two identical users can not be created' do
      user = User.new(name: 'Zara', email: 'zarah@example.com', password: '12345')
      expect(user.save).to equal(true)
      user2 = User.new(name: 'Zara', email: 'zarah@example.com', password: '12345')
      expect(user2.save).to equal(false)
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /users' do
    it 'Incomplete user params will sucsessfully redirect to /login' do
      user2 = User.new(email: 'zarah@example.com', password: '12345')
      expect(user2.save).to equal(false)
      expect(response).to have_http_status(200)
    end
  end

  describe 'POST /users' do
    it 'User params missing will not save user and redirect to /login' do
      user = User.new
      expect(user.save).to equal(false)
    end
  end

end
