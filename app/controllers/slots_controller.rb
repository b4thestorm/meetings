class SlotsController < ApplicationController

    def index
        if params[:coach_id]
            begin
                @slots = Slots.find(coach_id: coach_id)
            rescue RecordNotFound => e
                puts "no slots available for coach #{e.message()}"
            end
        else
            @slots = Slots.all()
        end
    end

    def new
        @slot = Slot.new
    end

    def create 
    
    end
end
