class WorkoutEntry < ApplicationRecord
  belongs_to :workout_session
  belongs_to :exercise
end
