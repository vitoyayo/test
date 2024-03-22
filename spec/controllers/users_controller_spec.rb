require 'rails_helper'
describe UsersController, type: :request do
  let(:users) { create_list(:user,5) }
  describe 'GET user/index' do
    def request
      get '/users/index'
    end
    before do
      users
      request
    end
    
    it 'when the index endpoint return :ok status' do
      expect(response).to have_http_status(:ok)
    end

    it 'when the index endpoint return a list of users' do
        expect(JSON.parse(response.body).count).to eq 5
      end
    end
end
