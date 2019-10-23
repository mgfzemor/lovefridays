class TeacherCourse < ApplicationRecord
  belongs_to :teacher
  belongs_to :course
  validates :code, presence: true
  validates :year, presence: true
  validates :semester, presence: true
end
