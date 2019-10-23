class Teacher < ApplicationRecord
  validates :full_name, presence: true
  validates :email, presence: true
end
