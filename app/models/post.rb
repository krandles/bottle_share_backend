class Post < ApplicationRecord
  belongs_to :user
  belongs_to :event

  validates :body, length: { maximum: 500 }, allow_nil: true
  validate :body_or_image

  private

  def body_or_image
    errors.add(:base, 'post must contain a comment and/or image') if body.blank? && image_url.blank?
  end
end
