class DirectTrade < ApplicationRecord
  CANCELED_STATUS = "canceled"
  CLOSED_STATUS = "closed"
  IN_PROGRESS_STATUS = "in_progress"

  belongs_to :issuer
  belongs_to :seller, class_name: "Account"
  belongs_to :buyer, class_name: "Account"
end
