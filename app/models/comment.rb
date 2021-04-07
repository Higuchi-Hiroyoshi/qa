class Comment < ApplicationRecord
  belongs_to :student
  belongs_to :homeroom

  validates :comment,      presence: true
end