class User < ApplicationRecord
  validates :email, presence: true, uniqueness: true
  has_many :offers, class_name: 'Offer', dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
