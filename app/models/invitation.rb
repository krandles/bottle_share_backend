class Invitation < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :comment, length: { maximum: 500 }
  validates :contribution, length: { maximum: 100 }
end
