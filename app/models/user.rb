class User < ApplicationRecord

  has_many :tweets, dependent: :destroy

  validates :nickname, presence: true, length: { maximum: 6 }

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
