class WallController < ApplicationController
  def write
  end

	def write_complete
		p = Post.new
		p.name = params[:name]
		p.idea = params[:idea]
		p.tag = params[:tag]
		if p.save
			redirect_to "/wall/posts"
		else
			flash[:alert] = p.errors[:content][0]
			redirect_to :back
		end
	end

	def edit
		@post_edit = Post.find(params[:id])
	end

	def edit_complete
		p = Post.find(params[:id])
		p.name = params[:name_edit]
		p.idea = params[:idea_edit]
		p.tag = params[:tag_edit]
		if p.save
			redirect_to "/wall/posts"
		else
			flash[:alert] = p.erros[:idea][0]
			redirect_to :back		
		end
	end
	
	def add_idea
		@ref_post = Post.find(params[:id])
	end

	def add_idea_complete
		p = Post.new
		p.name = params[:name]
		p.idea = params[:idea]
		p.tag = params[:tag]
		p.ref_idea = params[:ref_idea]
		if p.save
			redirect_to "/wall/posts"
		else
			flash[:alert] = p.errors[:content][0]
			redirect_to :back
		end
	end


  def posts
		@posts = Post.all

  end
end
