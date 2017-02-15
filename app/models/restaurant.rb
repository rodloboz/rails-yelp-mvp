class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  CATEGORY_OPTIONS = %w(chinese italian japanese french belgian)
  validates :category, inclusion: {in: CATEGORY_OPTIONS}
  validates :name, :address, :category, presence: true


end
