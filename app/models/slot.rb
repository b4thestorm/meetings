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
