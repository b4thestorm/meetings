class Student < ApplicationRecord
    has_many :slots
    has_many :coaches, through: :slots
end
