class PostsController < ApplicationController

  def create
    post = Post.new(
      user_id: current_user.id,
      spill_id: params["spill_id"],
      content: params["content"],
      image_url: params["image_url"],
      url: params["url"])
    if post.save
      redirect_to "/spills/#{post.spill.id}"
    else
      render 'dfkndkf'
    end
  end
end
