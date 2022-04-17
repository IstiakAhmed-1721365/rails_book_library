class Book < ApplicationRecord
    validates :title, presence: true
  validates :author, presence: true, length: { minimum: 3 }
end
