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
      if post.save
        redirect_to "/spills/#{post.spill.id}"
      end
    else
      flash[:warning] = 'Login or Create an Account to Post'
      redirect_to '/sign-in'
    end
  end

  def destroy
    post_id = params[:id]
    post = Post.find_by(id: post_id)
    post.destroy
    redirect_to "/"
    flash[:warning] = "Post Deleted!"
  end
end
