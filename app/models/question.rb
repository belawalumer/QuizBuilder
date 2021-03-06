class Question < ApplicationRecord
  validates :title, presence: true
  
  belongs_to :quiz
  has_many :answers, dependent: :destroy
end
