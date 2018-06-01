class Event < ApplicationRecord
  belongs_to :organizer, class_name: "User"

  has_many :invitations
  has_many :posts

  validates_presence_of :title, :date, :location, :address, :city, :state, :zip, :description, :private
end
