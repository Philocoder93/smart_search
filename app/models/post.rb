class Post < ApplicationRecord
  belongs_to :user
  has_many :results, dependent: :destroy
  has_many :searches, through: :results
end
