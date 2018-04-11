class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :rating, :beer, :user
end
