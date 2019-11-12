class Kitty < ApplicationRecord
  # validates at the model level, will feedback a nice error
  validates :color, :legs, :alive, presence: true
  # validates :legs, numericality: { greater_than: -1, less_than: 5 }
  # this is wrong, goes to 'rails guides validations'
  validates :legs, inclusion: { in: 0..4 }

end
