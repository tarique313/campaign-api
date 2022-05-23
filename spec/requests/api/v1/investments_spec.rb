require 'rails_helper'
RSpec.describe "InvestmentsController", type: :request do
  describe "POST #create" do
    let!(:campaign) { Campaign.create(name: "New campaign 1", image: "test image 2", target_amount: 2000.0, investment_multiple: 20) }
    let(:params) do
      {
        "amount": 40,
      }
    end
    context "create an investment" do
      before do
        post api_v1_campaign_investments_path(campaign.id, format: :json), params: { "campaign_id": campaign.id, "investment": params }
      end
      it 'returns 200' do
        expect(response).to have_http_status(200)
        json = JSON.parse(response.body)
        expect(json["amount"]).to eq("40.0")
      end
    end
  end
end
