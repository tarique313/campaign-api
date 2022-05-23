require 'rails_helper'
RSpec.describe "CampaignsController", type: :request do
  describe "PUT #update" do
    let!(:campaign) { Campaign.create(name: "New campaign 1", image: "test image 2", target_amount: 2000.0, investment_multiple: 20) }
    let(:params) do
      {
        "name": "new campaign",
        "image": "Image 12",
        "country": "BD",
        "sector": "IT"
      }
    end
    context "update the campaign" do
      before do
        put api_v1_campaign_path(campaign.id, format: :json), params: { "id": campaign.id, "campaign": params }
      end
      it 'returns 200' do
        expect(response).to have_http_status(200)
        json = JSON.parse(response.body)
        expect(json["name"]).to eq('new campaign')
      end
    end
  end
end
