require "spec_helper"

RSpec.describe Api::V1::TransactionsController, :type => :api do
  let(:transaction) { FactoryBot.create(:transaction) }


  context 'when valid token' do
    before do
      stub_const("TOKEN", "5555551212")
      transaction
      header "Authorization", "Bearer #{5555551212}"
      get "api/v1/transactions", format: :json
    end

    it 'responds with a 200 status' do

      expect(last_response.status).to eq 200
    end

    it 'Return collection transactions' do
      expect(last_response.body).to eq "{\"total_count\":1,\"incomplete_results\":false,\"items\":[{\"kind\":1,\"occurrence_at\":\"2018-10-10T10:00:00.000Z\",\"value\":\"154.0\",\"cpf\":\"67196213009\",\"card_number\":\"1234****6678\"}]}"
    end
  end

  context 'when invalid token' do
    before do
      header "Authorization", "Bearer XXXX"
      get "api/v1/transactions"
    end

    it 'responds with a 401 status' do
      expect(last_response.status).to eq 401
    end
  end

end
