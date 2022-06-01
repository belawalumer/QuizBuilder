class Quiz < ApplicationRecord
  validates :title, presence: true
  validate :created_by_admin

  belongs_to :user
  has_many :questions, dependent: :destroy
  has_many :answers, dependent: :destroy

  private

  def created_by_admin
    errors.add :user_id, "You are not authorized" if user.nil? || !user.admin?
  end
end
