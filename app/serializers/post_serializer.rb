class PostSerializer < ActiveModel::Serializer
  attributes :id, :body, :image_url
end
