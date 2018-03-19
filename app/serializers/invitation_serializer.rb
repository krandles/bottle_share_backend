class InvitationSerializer < ActiveModel::Serializer
  attributes :id, :status, :contribution, :comment, :event_id, :user_id
end
