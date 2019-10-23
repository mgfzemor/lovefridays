class Rating < ApplicationRecord
  belongs_to :course
  validates :grade, presence: true
  validates :comment, presence: true
end
