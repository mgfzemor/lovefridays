class CreateTeacherCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :teacher_courses do |t|
      t.string :code, limit: 5, null: false
      t.integer :year, null: false
      t.integer :semester, null: false
      t.references :teacher, null: false, foreign_key: true
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
