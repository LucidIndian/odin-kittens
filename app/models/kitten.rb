class Kitten < ApplicationRecord

  validates :name, presence: { message: "All kittens have names, silly!" }
  validates :cuteness, presence: { message: "0 is ugly, 10 is CUTE AF" }
  validates :age, presence: { message: "How young is your cat?!" }
  validates :softness, presence: { message: "0 is rough, 10 is smooth" }
  validates :cuteness, :softness, numericality: { less_than_or_equal_to: 10, greater_than_or_equal_to: 0, message: "%{value} seems wrong, Please use numbers less than ten!" }
end
