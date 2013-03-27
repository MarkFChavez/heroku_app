class Post < ActiveRecord::Base
	has_many :comments, dependent: :destroy
	validates :posted_by, presence: true
	validates :content, presence: true

	scope :odd, where("id % 2 != 0").order("id DESC")
	scope :even, where("id % 2 = 0").order("id DESC")
end
