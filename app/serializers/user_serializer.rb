class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :password_digest, :location, :zip_code
end
