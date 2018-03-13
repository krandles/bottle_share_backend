class User < ApplicationRecord
  has_many :invitations
  has_many :posts
  has_many :hosted_events, class_name: "Event",
                           foreign_key: "organizer_id"
  has_many :events, through: :invitations
end
