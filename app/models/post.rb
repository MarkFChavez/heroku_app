class Post < ActiveRecord::Base
	has_many :comments
	validates :posted_by, presence: true
	validates :content, presence: true

	scope :odd, where("id % 2 != 0").order("id DESC")
	scope :even, where("id % 2 = 0").order("id DESC")
end
