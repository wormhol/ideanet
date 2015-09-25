class WallController < ApplicationController
  def write
  end

  def posts
		@writer = params[:writer]
		@idea = params[:idea]
  end
end
