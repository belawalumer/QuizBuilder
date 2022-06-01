class Answer < ApplicationRecord
  validates :title, presence: true
  
  belongs_to :question
  belongs_to :user
  belongs_to :quiz
end
