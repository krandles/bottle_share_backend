class PostSerializer < ActiveModel::Serializer
  attributes :id, :body, :image_url, :user_id, :event_id, :author

  def author
    object.user.name
  end
end
