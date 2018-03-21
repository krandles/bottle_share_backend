class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :location, :zip_code
end
