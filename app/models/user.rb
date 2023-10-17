class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, uniqueness: true, presence: true
  validates :password, length: {minimum:3, maximum:20}
  # has_many :posts
  # has_many :comments

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  extend FriendlyId
  friendly_id :uuid, use: [ :slugged, :finders ]

end
