require 'rails_helper'

RSpec.describe UsersController, type: :controller do

  describe 'Get /users' do
    it 'renders the users/index page' do
      get :index
      expect(response).to render_template('index')
    end
  end

  describe 'Get /users' do
    it 'return http 200 when page is loaded' do
      get :index
      expect(response).to have_http_status(200)
    end
  end



end
