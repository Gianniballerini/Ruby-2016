class Pet < ApplicationRecord
  belongs_to :breed
  validates :name, presence: true
end
