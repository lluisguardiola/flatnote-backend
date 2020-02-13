class User < ApplicationRecord
    has_many :notes
    has_many :tags, through: :notes
    has_secure_password
end
