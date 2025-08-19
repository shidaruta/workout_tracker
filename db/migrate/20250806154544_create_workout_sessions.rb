class CreateWorkoutSessions < ActiveRecord::Migration[8.0]
  def change
    create_table :workout_sessions do |t|
      t.date :date

      t.timestamps
    end
  end
end
