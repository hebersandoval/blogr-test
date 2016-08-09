class ImagePostsController < ApplicationController
  def new
    @image_post = ImagePost.new
  end

  
end
