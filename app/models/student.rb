class Student < ApplicationRecord

  has_many :comments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name
    validates :username
    validates :phonenumber
    validates :birthday
  end

end
