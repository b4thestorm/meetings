class Api::V1::CoachesController < ApplicationController
    
    def create
        @coach = Coach.new(coach_params)
        binding.pry
        respond_to do |format|
            if @coach.save
              format.json { render json: @coach, status: :created }
            else
              format.json { render json: @coach.errors, status: :unprocessable_entity }
            end
          end
    end

    private
    def coach_params
        params.require(:coach).permit(:name, user_attributes: [ :email, :password, :password_confirmation ])
    end    

end
