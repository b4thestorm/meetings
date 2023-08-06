# == Schema Information
#
# Table name: coaches
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Coach < ApplicationRecord
    has_many :slots, dependent: :destroy
    has_many :students, through: :slots
    has_one :user, as: :meta, dependent: :destroy

end
