class NewtablesController < ApplicationController
    def create
        @trip = Trip.find(params[:trip_id])
        @newtable = @trip.newtables.create(comment_params)
        redirect_to trip_path(@trip)
    end
    def destroy
      @trip = Trip.find(params[:trip_id])
      @newtable = @trip.newtables.find(params[:id])
      @newtable.destroy
      redirect_to trip_path(@trip), status: :see_other
    end

    private
        def comment_params
          params.require(:newtable).permit(:gurdian_name, :dob, :aadhar_no, :pan_card_no, :status)
        end
end
