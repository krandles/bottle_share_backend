class Review < ApplicationRecord
  belongs_to :beer
  belongs_to :user

  validates :content, length: { maximum: 500 }, allow_nil: true
  validates :rating, numericality: { greater_than: 0, less_than: 6 }, allow_nil: true

  validate :body_or_rating

  private

  def body_or_rating
    errors.add(:base, 'review must contain a comment and/or rating') if content.blank? && rating.blank?
  end
end
