class Brewery < ApplicationRecord
  has_many :beers

  validates_presence_of :name, :location
  validates :name, uniqueness: true
end
