class DashboardController < ApplicationController
  # GET /dashboard
  # GET /dashboard.json
  # API Response
  # [
  #   {
  #       "id": 1,
  #       "user_id": 1,
  #       "driver_id": 3,
  #       "start_at": "2018-04-15T15:40:37.000Z",
  #       "end_at": "2018-04-15T15:45:37.000Z",
  #       "status": "ongoing",
  #       "lock_version": 16,
  #       "created_at": "2018-04-15T12:37:28.000Z",
  #       "updated_at": "2018-04-15T15:40:37.000Z"
  #   }
  # ]
  def index
    @requests =  Request.all
    respond_to do |format|
      format.json {render json: @requests }
      format.html { }
    end
  end
end
