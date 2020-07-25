class SurveySerializer < ActiveModel::Serializer
  attributes :id, :age, :gender, :hhsize, :hhfamilies, :zipcode, :mixedstatus
  has_one :rx
end
