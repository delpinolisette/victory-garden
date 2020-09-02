class Leaf < ApplicationRecord
  belongs_to :user
  has_many :connections, dependent: :destroy
  has_many :trees, through: :connections
  has_one_attached :cover_img
end
