class TextPostsController < ApplicationController
  def new
    @text_post = TextPost.new
  end
end
