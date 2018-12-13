class Offer < ApplicationRecord
  belongs_to :company
  has_many :onboardings
  has_many :offers_users, dependent: :destroy
  has_many :users, :through => :offers_users, dependent: :destroy
end
