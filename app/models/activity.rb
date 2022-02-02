class Activity < ApplicationRecord

  # adding dependent: :destroy so the signup is deleted before the activity.
  has_many :signups, dependent: :destroy
  has_many :campers, through: :signups
end
