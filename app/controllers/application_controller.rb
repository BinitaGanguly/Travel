class ApplicationController < ActionController::Base
    before_action :set_query
    def set_query
        @q = Trip.ransack(params[:q])
    end

end
