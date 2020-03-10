class Remote < ApplicationRecord
  has_and_belongs_to_many :tvs
end
