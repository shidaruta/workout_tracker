class CreateWorkoutEntries < ActiveRecord::Migration[8.0]
  def change
    create_table :workout_entries do |t|
      t.integer :sets
      t.integer :reps
      t.float :weight
      t.references :workout_session, null: false, foreign_key: true
      t.references :exercise, null: false, foreign_key: true

      t.timestamps
    end
  end
end
