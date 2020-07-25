class Rx < ApplicationRecord
  belongs_to :cbo
  belongs_to :hc
  has_many :surveys

  def hcname
    hc.name
  end

  def cboname
    cbo.name
  end
end
