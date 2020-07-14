class Cbo < ApplicationRecord
    has_secure_password
    has_many :prescribers
    has_many :rxs
    validates :username, uniqueness: {case_sensitive: false}
end
