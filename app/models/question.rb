class Question < ApplicationRecord
  acts_as_followable
  belongs_to :user
  belongs_to :topic
  has_many :answers

  validates :topic_id, presence: true
  validates :user_id, presence: true
  validates :title, presence: true

end
