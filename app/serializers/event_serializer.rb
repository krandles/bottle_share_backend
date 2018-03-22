class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :location, :address, :address2, :city, :state, :zip, :description, :private, :posts, :invitations

  def invitations
    invites = []

    object.invitations.each do |i|
      invite = i.attributes
      invite[:invitee] = i.user.name
      invites.push(invite)
    end

    return invites
  end

  def posts
    posts_array = []

    object.posts.each do |p|
      post = p.attributes
      post[:author] = p.user.name
      posts_array.push(post)
    end

    return posts_array
  end


end
