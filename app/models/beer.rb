class Beer < ApplicationRecord
  belongs_to :brewery

  has_many :reviews
  has_many :users, through: :reviews

  validates_presence_of :name, :abv, :style
  validates :abv, numericality: { greater_than: 0, less_than: 50 }
  validates :name, uniqueness: { scope: :brewery,
    case_sensitive: false,
    message: "Beer already exists for this brewery"}
end
