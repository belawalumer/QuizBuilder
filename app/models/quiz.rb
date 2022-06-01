class Quiz < ApplicationRecord
  validates :title, presence: true

  belongs_to :user
  has_many :questions
  has_many :answers

  before_create :is_admin

  private

  def is_admin
    raise "You are not authorized" unless user.admin?
  end
end
