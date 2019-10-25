class Course < ApplicationRecord
  has_many :teacher_courses
  has_many :ratings, through: :teacher_courses

  validates :code, presence: true
  validates :name, presence: true
end
