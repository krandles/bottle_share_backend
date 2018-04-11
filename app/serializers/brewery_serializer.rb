class BrewerySerializer < ActiveModel::Serializer
  attributes :id, :name, :location, :url
end
