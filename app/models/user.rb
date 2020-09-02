class User < ApplicationRecord
  has_many :trees, dependent: :destroy
  validates :username, :password_hash, presence: true
end
