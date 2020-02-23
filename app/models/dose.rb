class Dose < ApplicationRecord
  belongs_to :cocktail
  belongs_to :ingredient
  # validates :description, presence: true
  # validates_uniqueness_of :ingredient_id, :cocktail_id
  validates :cocktail, uniqueness: { scope: :ingredient }
end
