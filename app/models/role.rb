class Role < ApplicationRecord
  has_many :account_roles, dependent: :destroy
  has_many :accounts, through: :account_roles
end
