class PostsController < ApplicationController

  def create
    post = Post.new(
      user_id: current_user.id,
      spill_id: params["spill_id"],
      content: params["content"])
    if post.save
      redirect_to "/spills/#{post.spill.id}"
    else
      render 'dfkndkf'
    end
  end
end
