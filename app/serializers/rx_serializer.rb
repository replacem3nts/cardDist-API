class RxSerializer < ActiveModel::Serializer
  attributes :id, :hcname, :cboname, :language, :prescribername, :prescriberphone, :prescriberemail, :clienttel, :amount, :appt, :cardserial, :pickedup, :loaded
end
