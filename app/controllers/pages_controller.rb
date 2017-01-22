class PagesController < ApplicationController
  def home
    render 'home.html.erb'
  end

  def map
    post_id = Post.last.id
    @posts = []
    10.times do |post|
      post = Post.find_by(id: post_id)
      @posts << post
      post_id = post_id - 1
    end

    render 'map.html.erb'
  end

  def about
    render 'about.html.erb'
  end

end
