class Account < ApplicationRecord
  has_many :direct_sales, class_name: "DirectTrade"
  has_many :direct_purchases, class_name: "DirectTrade"
  has_many :account_roles, dependent: :destroy
  has_many :roles, through: :account_roles
  has_one :broker, foreign_key: :broker_id, class_name: "Account"
end
