require 'rails_helper'

RSpec.describe 'Bookings API', type: :request do
  #initialize test data
  let!(:users) { create_list(:user, 10) }
  let(:user_id) { users.first.id }

  #test suite for GET /users
  describe 'GET /users' do
    #make HHTP request before each example
    before { get '/users' }

    it 'returns users' do
      #note 'json' is a custom helper to parse JSON responses
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it 'returns status code 200' do
      expect(response).to have_http_status(200)
    end
  end

  #test suite for GET /users/:id
  describe 'GET /users/:id' do
    before { get "/users/#{user_id}" }

    context 'when the record exists' do
      it 'returns the user' do
        expect(json).not_to be_empty
        expect(json['id']).to eq(user_id)
      end

      it 'returns status code 200' do
        expect(response). to have_http_status(200)
      end
    end

    context 'when the record does not exist' do
      let(:user_id) { 100 }

      it 'returns status code 404' do
        expect(response).to have_http_status(404)
      end

      it 'returns a not found message' do
        expect(response.body).to match(/Couldn't find User/)
      end
    end
  end

  #test suite for POST /users
  describe 'POST /users' do
    #valid payload
    let(:valid_attributes) { { email: 'butts@butts.com', password: 'buttstuff'  } }

    context 'when the request is valid' do
      before { post '/users', params: valid_attributes }

      it 'creates a user' do
        expect(json['email']).to eq('butts@butts.com')
      end

      it 'returns status code 201' do
        expect(response).to have_http_status(201)
      end
    end

    context 'when the request is invalid' do
      before { post '/users', params: {email: 'yourmom@mom.com'} }

      it 'returns a status code of 422' do
        expect(response).to have_http_status(422)
      end

      it 'returns a validation failure message' do
        expect(response.body).to match(/Validation failed: Password can't be blank/)
      end
    end
  end
end
