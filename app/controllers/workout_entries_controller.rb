class WorkoutEntriesController < ApplicationController
  before_action :set_workout_session

  def new
    @workout_entry = @workout_session.workout_entries.new
    @exercises = Exercise.all
  end

  def create
    @workout_entry = @workout_session.workout_entries.new(workout_entry_params)
    if @workout_entry.save
      redirect_to workout_session_path(@workout_session),
        notice: 'Workout entry was successfully created.'
    else
      @exercises = Exercise.all
      render :new
  end
end



private

  def set_workout_session
    @workout_session = WorkoutSession.find(params[:workout_session_id])
  end

  def workout_entry_params
    params.require(:workout_entry).permit(:sets, :reps, :weight, :exercise_id)
  end
end