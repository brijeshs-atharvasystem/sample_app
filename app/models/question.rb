class Question < ApplicationRecord
  acts_as_follower
  belongs_to :user
end
