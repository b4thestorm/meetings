# == Schema Information
#
# Table name: students
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Student < ApplicationRecord
    has_many :slots
    has_many :coaches, through: :slots
    has_one :user, as: :meta, dependent: :destroy
end
