class Topic < ApplicationRecord
  acts_as_followable
  has_many :questions
end
