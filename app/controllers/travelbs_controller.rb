class TravelbsController < ApplicationController
    def index
        @travelbs=Travelblog.all
    end

    def show
        @travelblog=Travelblog.find(params[:id])
    end

    def new 
        @travelblog=Travelblog.new
    end

    def create

        p '.......................'
        @travelblog = Travelblog.new(travelbs_params)
        # p @travelbs

        if @travelblog.save
            redirect_to travelbs_path
        else
            render :new, status: :unprocessable_entity
        end
    end

    def edit
        @travelblog = Travelblog.find(params[:id])
      end
    
    def update
        @travelblog = Travelblog.find(params[:id])
    
        if @travelblog.update(travelbs_params)
          redirect_to travelbs_path
        else
          render :edit, status: :unprocessable_entity
        end
    end
    def destroy
        @travelblog= Travelblog.find(params[:id])
        @travelblog.destroy
    
        redirect_to root_path, status: :see_other
    end
    

    private
    def travelbs_params
      params.require(:travelblog).permit(:name, :place_to_visit, :contact_number, :email_id)
    end

end
