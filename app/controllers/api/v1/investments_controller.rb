class Api::V1::InvestmentsController < ApplicationController
  before_action :set_campaign

  def index
    @campaign = Campaign.find(params[:campaign_id])
    investments = @campaign.investments.limit(20).order('id DESC')
    render json: investments
  end

  def create
      investment = @campaign.investments.new(investment_params)
      if investment.save
        render json: investment
      else
        api_error(:unprocessable_entity, 'unprocessable_entity', investment.errors)
      end
  end

  def show
    investment = @campaign.investments.find(params[:id])
    render json: investment
  end


  private
  
  def investment_params
    params.require(:investment).permit(:amount)
  end
  def set_campaign
    campaign = Campaign.find_by(id: params[:campaign_id])
    if campaign
      @campaign = campaign
    else
      api_error(:not_found, "Could not find Campaign with id: #{params[:id]}", nil)
    end
  end
end
