class Cocktail < ApplicationRecord
  has_many :doses, :dependent => :destroy
  has_many :ingredients, through: :doses
  has_one_attached :photo
  # accepts_nested_attributes_for :dose, allow_destroy: false
  validates :name, presence: true, uniqueness: true
  end
