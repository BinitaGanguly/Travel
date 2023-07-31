class TripsController < ApplicationController
  def index
    @trips= Trip.all
  end

  def show
    @trip= Trip.find(params[:id])
  end

  def new
    @trip=Trip.new
  end

  def create
    @trip = Trip.new(t_params)

    if @trip.save
      redirect_to @trip
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @trip= Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])

    if @trip.update(t_params)
      redirect_to @trip
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @trip = Trip.find(params[:id])
    @trip.destroy
    redirect_to root_path, status: :see_other
  end

  private
    def t_params
      params.require(:trip).permit(:name, :contact_no, :email_id, :no_of_people, :name_of_place, :date_for_tour, :return_date, :status)
    end
  


end
