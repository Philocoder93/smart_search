class Search < ApplicationRecord
  belongs_to :user
  has_many :results, dependent: :destroy
  has_many :posts, through: :results
end
