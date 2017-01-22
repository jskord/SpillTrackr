class PostsController < ApplicationController

  def create
    if current_user
    post = Post.new(
      user_id: current_user.id,
      spill_id: params["spill_id"],
      content: params["content"],
      image_url: params["image_url"],
      url: params["url"],
      image: params[:image])
    else
      flash[:warning] = 'Login or Create an Account to Post'
      redirect_to '/sign-in'
    end
  end
end
