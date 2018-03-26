class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :location, :address, :address2, :city, :state, :zip, :description, :private, :posts, :invitations, :map_url, :organizer_id

  def invitations
    invites = []

    object.invitations.each do |i|
      invite = i.attributes
      invite[:invitee] = i.user.name
      invites.push(invite)
    end

    invites
  end

  def posts
    posts_array = []

    object.posts.each do |p|
      post = p.attributes
      post[:author] = p.user.name
      posts_array.push(post)
    end

    posts_array
  end

  def map_url
    full_address = object.address + ", " + object.city + ", " + object.state + " " + object.zip
    full_address = full_address.gsub(/\s/, "%20")
    full_address = full_address.gsub(",", "%2C")
    "https://www.google.com/maps/embed/v1/place?q=#{full_address}&key="
  end


end
