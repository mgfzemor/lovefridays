class Rating < ApplicationRecord
  belongs_to :teacher_course
  validates :grade, presence: true
  validates :comment, presence: true
end
