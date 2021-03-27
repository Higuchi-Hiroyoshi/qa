class Teacher < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  with_options presence: true do
    validates :name
    validates :phonenumber
    validates :birthday
    validates :image
    validates :university
    validates :department
    validates :subject1
    validates :pr
  end
end