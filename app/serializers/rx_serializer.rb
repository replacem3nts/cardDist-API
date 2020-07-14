class RxSerializer < ActiveModel::Serializer
  attributes :id, :language, :prescribername, :prescriberphone, :clienttel, :amount, :appt, :cardserial, :pickedup, :loaded
end
