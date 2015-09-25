class WallController < ApplicationController
  def write
  end

	def write_complete
		p = Post.new
		p.name = params[:writer]
		p.idea = params[:idea]
		p.tag = params[:tag]
		if p.save
			redirect_to "/wall/posts"
		else
			flash[:alert] = p.errors[:content][0]
			redirect_to :back
		end
	end

  def posts
  end
end
