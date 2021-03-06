class TrackersController < ApplicationController
  before_action :find_tracker, only: %i[show update destroy]

  def index
    @trackers = Tracker.all.order(created_at: :desc).includes(:user)

    render json: {
      data: ActiveModelSerializers::SerializableResource.new(@trackers, each_serializer: TrackerSerializer),
      message: ['Trackers fetched successfully'],
      status: 200,
      type: 'Success'
    }
  end

  def show
    @tracker = Tracker.find(params[:id])

    render json: {
      data: ActiveModelSerializers::SerializableResource.new(@tracker, serializer: TrackerSerializer),
      message: ['Tracker fetched successfully'],
      status: 200,
      type: 'Success'
    }
  end

  def create
    @tracker = Tracker.new(tracker_params)

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
    params.permit(:blood_pressure, :blood_glucose, :user_id)
  end

  def find_tracker
    @tracker = Tracker.find(params[:id])
  end
end
