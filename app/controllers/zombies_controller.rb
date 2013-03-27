class ZombiesController < ApplicationController

  def index
  	@post = Post.new
  	@comment = Comment.new
  	@posts_odd = Post.odd.limit(10)
  	@posts_even = Post.even.limit(10)
  end

end
