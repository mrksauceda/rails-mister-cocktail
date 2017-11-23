class Ingredient < ApplicationRecord

  validates :name, uniqueness: true, presence: true

  has_many :doses
  has_many :cocktails, through: :doses

  # before_destroy :check_if_any_doses

  # def check_if_any_doses
  #   raise ActiveRecord::InvalidForeignKey if doses.any?
  # end

end
