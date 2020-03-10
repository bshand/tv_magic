class Tv < ApplicationRecord
  has_and_belongs_to_many :remotes
end
