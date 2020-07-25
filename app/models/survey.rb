class Survey < ApplicationRecord
  belongs_to :rx
  has_many :sfs
  has_many :funduses through: :sfs
  has_many :scs
  has_many :covidimpacts through: :sfs
  has_many :sds
  has_many :doctorvisits through: :sds
  has_many :hhmembers
end
