class Teacher < ApplicationRecord
  has_many :comments
  has_many :messages , through: :schools
  has_one_attached :image

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name
    validates :phonenumber
    validates :birthday
    validates :image
    validates :university
    validates :department
    validates :pr
  end

  validates :subject1_id, numericality: { other_than: 1 }
end