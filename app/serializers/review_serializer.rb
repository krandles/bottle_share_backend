class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :content, :rating, :beer, :user, :brewery

  def brewery
    object.beer.brewery
  end
end
