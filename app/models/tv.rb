class Tv < ApplicationRecord
  has_and_belongs_to_many :remotes

  def make_and_model
    "#{make} (#{model})"
  end
end
