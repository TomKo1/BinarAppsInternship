class Author < ActiveRecord::Base
  has_many :author_posts
  has_many :posts, through: :author_posts
  
  
  validates :name, presence: true, length: { in: 3..20}
  validates :surname, presence: true, length: { maximum: 30 }
  validates :age, :inclusion => 1..150
end


