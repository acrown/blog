class TagsController < ApplicationController
  def tag
    @tag = request[:id]
    @posts = Post.tagged_with(@tag)
    respond_to do |format|
      format.html
    end
  end

end

