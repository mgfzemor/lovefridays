class TeacherCourse < ApplicationRecord
  has_many :ratings
  belongs_to :teacher
  belongs_to :course

  enum semester: %i[first_semester second_semester]

  validates_length_of :code, minimum: 5, maximum: 5
  validates :code, presence: true
  validates :year, presence: true
  validates :semester, presence: true
end
