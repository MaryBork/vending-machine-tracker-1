class Snack < ApplicationRecord
  validates_presence_of :name
  validates_presence_of :price

  has_and_belongs_to_many :machines
  belongs_to :owners, through: :machine


end
