class Investment < ApplicationRecord
  attr_accessor :investment_campaign

  validate :investment_amount
  validate :investment_multiple
  belongs_to :campaign
  after_save :update_campaign
  before_validation :set_campaign

  private
  def set_campaign
    self.investment_campaign = Campaign.find(campaign_id)
  end

  def investment_amount
    if amount > investment_campaign.target_amount
      errors.add 'amount', 'amount can not be greater than campaign target amount'
    end
  end

  def investment_multiple
    investment_multiple = investment_campaign.investment_multiple
    unless (amount % investment_multiple).zero?
      errors.add 'amount', "amount must be a multiple of #{investment_multiple}"
    end
  end

  def update_campaign
    total_investment_amount = investment_campaign.investments.pluck(:amount).reduce(:+)
    percentage_raised = (total_investment_amount * 100) / investment_campaign.target_amount
    campaign.update(percentage_raised: percentage_raised)
  end
end
