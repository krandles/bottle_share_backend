class EventSerializer < ActiveModel::Serializer
  attributes :id, :date, :location, :address, :city, :state, :zip, :description, :private
end
