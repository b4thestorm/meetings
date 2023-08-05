class Coach < ApplicationRecord
    has_many :slots, dependent: :destroy
    has_many :students, through: :slots
end
