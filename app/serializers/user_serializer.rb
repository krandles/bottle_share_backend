class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :location, :zip_code, :hosted_events, :invitations

  def invitations
    invitations_array = []

    object.invitations.each do |i|
      invite = i.attributes
      invite[:event] = i.event.title
      invite[:date] = i.event.date
      invite[:organizer] = i.event.organizer.name
      invitations_array.push(invite)
    end

    invitations_array
  end
end
