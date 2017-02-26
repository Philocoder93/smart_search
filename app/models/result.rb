class Result < ApplicationRecord
  belongs_to :user
  belongs_to :search
  belongs_to :post
end
