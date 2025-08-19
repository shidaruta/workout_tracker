class WorkoutSession < ApplicationRecord
  has_many :workout_entries, dependent: :destroy
end
