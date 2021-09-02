class TrackersController < ApplicationController
    before_action :find_tracker, only: :show
    def index
        @trackers = Tracker.all
        render json: @trackers
    end

    def show
        render json: @tracker
    end

    private
        def find_tracker
            @tracker = Tracker.find(params[:id])
        end
end
