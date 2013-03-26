class PostsController < ApplicationController
  def index
  end

  def create
  	@post = Post.create(params[:post])

  	respond_to do |format|
  		if @post.save
  			format.html { redirect_to root_path, notice: "Zombieeee posted some shit!" }
  			format.json { render json: @post, status: :created}
  		else

  		end
  	end
  end
end
