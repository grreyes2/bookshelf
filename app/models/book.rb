class Book < ApplicationRecord

  validates :title, :author, presence: true

  has_one_attached :cover
  has_many :assignments
  has_many :users, :through => :assignments

  include PgSearch
  pg_search_scope :search_by_title_and_body, :against => [:title, :author],
    using: {
      :tsearch => {:prefix => true}
    }

end
