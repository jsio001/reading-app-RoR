class Book < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  validates :author, :name, presence: true
end
