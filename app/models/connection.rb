class Connection < ApplicationRecord
  belongs_to :leaf
  belongs_to :tree
end
