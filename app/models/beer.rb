class Beer < ApplicationRecord
  belongs_to :brewery

  has_many :reviews
  has_many :users, through: :reviews
end
