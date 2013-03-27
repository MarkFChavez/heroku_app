class CommentsController < ApplicationController
  def index
    @comments = @post.comments
  end

  before_filter :get_post

  def get_post 
  	@post = Post.find(params[:post_id])
  end

  def create
  	@comment = @post.comments.build(params[:comment])

  	if @comment.save
  		redirect_to root_path, notice: "Woah! A zombie just commented..."
  	else
  		render root_path, alert: "Please enter a comment you dirty zombie!"
  	end
  end	
end
