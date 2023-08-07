class SlotsController < ApplicationController

    def index
        if params[:coach_id]
            begin
                @slots = Slot.find(coach_id: coach_id)
            rescue RecordNotFound => e
                puts "no slots available for coach #{e.message()}"
            end
        else
            @slots = Slot.all()
        end
        render json: @slots
    end

    def new
        @slot = Slot.new
    end

    def create 
    
    end
end
