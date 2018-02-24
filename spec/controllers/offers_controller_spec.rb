require 'rails_helper'

RSpec.describe OffersController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #create' do
    it 'returns http success' do
      get :create
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #updaate' do
    it 'returns http success' do
      get :updaate
      expect(response).to have_http_status(:success)
    end
  end
end
