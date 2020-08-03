class Rx < ApplicationRecord
  belongs_to :cbo
  belongs_to :hc
  has_many :surveys
  validates :rxcode, uniqueness: true

  before_create :add_rxcode

  
  def hcname
    hc.name
  end
  
  def cboname
    cbo.name
  end
  
  private
  
  def add_rxcode
    nato_alphabet = [
      "Alpha", "Bravo", "Charlie", "Delta", "Echo", "Foxtrot", "Golf", "Hotel", "India", 
      "Juliett", "Kilo", "Lima", "Mike", "November", "Oscar", "Papa", "Quebec", "Romeo", 
      "Sierra", "Tango", "Uniform", "Victor", "Whiskey", "X-ray", "Yankee", "Zulu"]
  
      self.rxcode = nato_alphabet.sample + '-' + SecureRandom.hex(3)
    end

end
