class Message < ApplicationRecord
  belongs_to :student
  belongs_to :teacher
  belongs_to :school
  has_one_attached :image
end
