class OffersUser < ApplicationRecord
  belongs_to :user
  belongs_to :offer
  belongs_to :onboarding
end
