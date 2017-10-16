class Book < ApplicationRecord
  validates :author, :name, presence: true
end
