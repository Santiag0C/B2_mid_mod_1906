class Book < ApplicationRecord
  validates_presence_of :title
  validates_presence_of :num_page
  validates_presence_of :publication_year

  belongs_to :author
  has_many :authors
end
