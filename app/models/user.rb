class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :quizzes, dependent: :destroy
  has_many :answers, dependent: :destroy

  enum role: {
    admin: 1,
    user: 2
  }
end