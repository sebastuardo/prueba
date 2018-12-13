class Onboarding < ApplicationRecord
  belongs_to :offer, optional: true
  has_many :offers_users, dependent: :destroy
  has_many :users, :through => :offers_users, dependent: :destroy
end
