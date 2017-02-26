class Post < ApplicationRecord
  belongs_to :user
  has_many :results
  has_many :searches, through: :results
end
