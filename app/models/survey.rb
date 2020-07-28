class Survey < ApplicationRecord
  belongs_to :rx
  has_many :sfs
  has_many :funduses, through: :sfs
  has_many :scs
  has_many :covidimpacts, through: :scs
  has_many :sds
  has_many :doctorvisits, through: :sds
  has_many :hhmembers


  def create_hhmembers(members_array)
    members_array.each { |member| Hhmember.create(survey_id: self.id, age: member[:age], gender: member[:gender])}
  end
end
