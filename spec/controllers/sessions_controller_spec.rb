require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  user = User.new(name: 'Zara', email: 'zarah@example.com', password: '12345')
  User.find_by_email('zarah@example.com')

  it 'saves session when user is created' do
    user&.authenticate(password: '12345')
    expect(session[:user_id]).to equal(user.id)
  end

  it 'does not save session when user password is is incorrect' do
    user&.authenticate(password: '11111')
    expect(session[:user_id]).to equal(nil)
  end

  it 'Redirects correctly to /posts if user is created' do
    user&.authenticate(password: '12345')
    expect(response).to have_http_status(200)
  end

  it 'Redirects correctly to /login if user is created' do
    user&.authenticate(password: '11111')
    expect(response).to have_http_status(200)
  end

  it 'destroy session after logging out' do
    user&.authenticate(password: '12345')
    session.destroy
    expect(session[:user_id]).to equal(nil)
  end

  it 'redirects to /login after loging out' do
    user&.authenticate(password: '12345')
    session.destroy
    expect(response).to have_http_status(200)
  end
end
