class EventSerializer < ActiveModel::Serializer
  attributes :id, :title, :date, :location, :address, :address2, :city, :state, :zip, :description, :private
end
