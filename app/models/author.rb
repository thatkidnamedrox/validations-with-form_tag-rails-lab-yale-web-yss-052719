class Author < ActiveRecord::Base
  validates :name, presence: true
  validate :email, uniqueness: true
  validate :phone_number, length: { is: 10 }
end
