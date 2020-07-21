class RxSerializer < ActiveModel::Serializer
  attributes :id, :hcname, :cboname, :language, :prescribername, :prescriberphone, :clienttel, :amount, :appt, :cardserial, :pickedup, :loaded
end
