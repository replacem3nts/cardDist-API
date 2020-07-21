class CboSerializer < ActiveModel::Serializer
  attributes :id, :name, :allhcs
  has_many :prescribers
  has_many :rxs
end
