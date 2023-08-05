# == Schema Information
#
# Table name: slots
#
#  id         :bigint           not null, primary key
#  start_time :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  coach_id   :bigint
#  student_id :bigint
#
class Slot < ApplicationRecord
    belongs_to :coach
    belongs_to :student

    def generate_slots
        
    end

    def schedule_slot
        puts "schedule student"
    end

    def unschedule_slot
        puts "unschedule student"
    end
end
