class InvitationSerializer < ActiveModel::Serializer
  attributes :id, :status, :contribution, :comment
end
