class Campaign < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :target_amount, presence: true, numericality: { greater_than: 0 }
  attribute :percentage_raised, default: 0

  has_many :investments
end
