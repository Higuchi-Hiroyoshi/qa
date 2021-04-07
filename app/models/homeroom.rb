class Homeroom < ApplicationRecord
  has_many :students
  has_many :comments

  validates :comment,      presence: true

end