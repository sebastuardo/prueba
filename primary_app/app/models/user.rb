class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :offers_users, dependent: :destroy
  has_many :offers, :through => :offers_users, dependent: :destroy
  has_many :onboardings, :through => :offers_users, dependent: :destroy
end
