class Recipe < ApplicationRecord
  has_and_belongs_to_many :ingredients
  belongs_to :user
end
