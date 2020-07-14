class HcSerializer < ActiveModel::Serializer
  attributes :id, :name
  has_many :rxs
end
