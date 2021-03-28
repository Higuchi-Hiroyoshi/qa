class Teacher < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :subject1
  belongs_to :subject2

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