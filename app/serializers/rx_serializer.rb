class RxSerializer < ActiveModel::Serializer
  attributes :id, :rxcode, :hcname, :cboname, :language, :prescribername, :prescriberphone, :prescriberemail, :clienttel, :amount, :appt, :cardserial, :pickedup, :loaded, :notes
end
