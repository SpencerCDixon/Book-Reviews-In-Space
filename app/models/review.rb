class Review < ActiveRecord::Base
  belongs_to :book
  belongs_to :user

  validates :description, presence: true
end
