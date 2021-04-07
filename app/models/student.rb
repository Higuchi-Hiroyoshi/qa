class Student < ApplicationRecord
  has_many :comments
  belongs_to :homeroom

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name
    validates :username
    validates :phonenumber
    validates :birthday
  end
end
