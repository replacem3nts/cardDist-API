class Cardloader < ApplicationRecord
    has_secure_password

    def hcs
        nondefault = Hc.all.filter { |hc| hc.name != "DEFAULT HC"}
        nondefault.map { |hc| SingleHcSerializer.new(hc) }
    end
end
