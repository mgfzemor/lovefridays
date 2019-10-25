class Rating < ApplicationRecord
  belongs_to :teacher_course

  has_rich_text :comment
  
  validates :grade, presence: true
end
