class BeerSerializer < ActiveModel::Serializer
  attributes :id, :name, :abv, :brewery, :style, :img_url, :description
end
