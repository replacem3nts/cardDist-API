class Cardloader < ApplicationRecord
    has_secure_password

    def hcs
        Hc.all.map {|hc| SingleHcSerializer.new(hc)}
    end
end
