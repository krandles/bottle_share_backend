class InvitationSerializer < ActiveModel::Serializer
  attributes :id, :status, :contribution, :comment, :event, :user
end
