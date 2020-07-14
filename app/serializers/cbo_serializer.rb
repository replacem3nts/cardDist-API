class CboSerializer < ActiveModel::Serializer
  attributes :id, :name, :all_hcs
  has_many :prescribers
  has_many :rxs
end
