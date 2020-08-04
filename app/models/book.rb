class Book < ApplicationRecord
  has_many :assignments
  has_many :users, :through => :assignments
end
