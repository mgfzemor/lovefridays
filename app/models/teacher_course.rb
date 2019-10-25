class TeacherCourse < ApplicationRecord
  has_many :ratings
  belongs_to :teacher
  belongs_to :course

  enum semester: %i[first_semester second_semester]

  validates :code, presence: true
  validates :year, presence: true
  validates :semester, presence: true
end
