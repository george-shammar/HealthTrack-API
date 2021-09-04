class TrackersController < ApplicationController
    before_action :find_tracker, only: [:show, :update, :destroy]
    def index
        @trackers = Tracker.all
        render json: @trackers
    end

    def show
        render json: @tracker
    end

    def new
      @tracker = current_user.trackers.build
    end

    def create
        @tracker = Tracker.new(tracker_params)
        # @tracker = current_user.trackers.build(tracker_params)

        if @tracker.save
          render json: @tracker
        else
          render json: { errors: @tracker.errors }
        end
    end
    
    def update
        @tracker.update(tracker_params)
        head :no_content
    end
    
    def destroy
        @tracker.destroy
         head :no_content
    end

    private
      def tracker_params
        params.permit(:blood_pressure, :blood_glucose)
      end
        def find_tracker
            @tracker = Tracker.find(params[:id])
        end
end
