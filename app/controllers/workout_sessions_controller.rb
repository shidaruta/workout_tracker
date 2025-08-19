class WorkoutSessionsController < ApplicationController
  def index
    @workout_sessions = WorkoutSession.all
  end

  def show
      @workout_session = WorkoutSession.find(params[:id])
      @workout_entries = @workout_session.workout_entries.includes(:exercise)
  end

  def new
    @workout_session = WorkoutSession.new
  end

  def create
    @workout_session = WorkoutSession.new(workout_session_params)
    if @workout_session.save
      redirect_to new_workout_session_workout_entry_path(@workout_session),
        notice: 'Workout session was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

private
def workout_session_params
  params.require(:workout_session).permit(:date)
end
