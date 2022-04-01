class VhsTapeSerializer < ActiveModel::Serializer
  attributes :id, :price, :rating, :title
  has_many :reviews
end
