class Teacher < ApplicationRecord
  has_many :teacher_courses
  has_many :ratings, through: :teacher_courses
  
  validates :full_name, presence: true
  validates :email, presence: true
end
