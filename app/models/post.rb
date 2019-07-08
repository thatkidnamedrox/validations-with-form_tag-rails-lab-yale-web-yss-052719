class Post < ActiveRecord::Base
  validates :title, presence: true
  validates :content, length: { minimum: 100 }
  validate :category_options

  def category_options
    options = ["Fiction", "Non-Fiction"]
    if !options.include?(category)
      errors.add(:category, "must be either fiction or non-fiction")
    end
  end

end
