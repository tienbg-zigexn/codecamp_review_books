class Book < ApplicationRecord
  has_many :reviews, dependent: :destroy
  accepts_nested_attributes_for :reviews

  def self.search(query)
    where('title LIKE :query or content LIKE :query', query: "%#{query}%")
  end
end
