class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :name, :model, :brand, :storage, :price, :date

end
