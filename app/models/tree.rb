class Tree < ApplicationRecord
  belongs_to :user
  has_many :connections, dependent: :destroy
  has_many :leafs, through: :connections
end
