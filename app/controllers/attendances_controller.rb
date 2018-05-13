class AttendancesController < ApplicationController
  def create
    @event = Event.find(params[:event_id])
    @attendance = @event.attendances.create(attendance_params)
    redirect_to event_path(@event)
  end

  def destroy
    @event = Event.find(params[:event_id])
    @attendance = @event.attendances.find(params[:id])
    @attendance.destroy
    redirect_to event_path(@event)
  end

  private
  def attendance_params
    params.require(:attendance).permit(:name, :comment)
  end
end
