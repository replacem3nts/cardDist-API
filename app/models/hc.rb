class Hc < ApplicationRecord
    has_secure_password
    has_many :rxes
    validates :username, uniqueness: {case_sensitive: false}
end
