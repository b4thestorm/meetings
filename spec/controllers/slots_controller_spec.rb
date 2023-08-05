require "rails_helper"

describe SlotsController do

    describe "GET index" do
        let (:coach) {id: 2 , name: "Arnold"}
        it "returns slots for the current coach" do
            get :index, params: {coach_id: 2}
            expect(assigns(:slots).count).to eq 2
        end

        it "returns all slots available" do
            get :index
            expect(assigns(:slots).count).to eq 10
        end
    end

end