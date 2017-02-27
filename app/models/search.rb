class Search < ApplicationRecord
  belongs_to :user
  has_many :results
  has_many :posts, through: :results
end
