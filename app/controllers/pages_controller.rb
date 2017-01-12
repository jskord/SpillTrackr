class PagesController < ApplicationController
  def home
    render 'home.html.erb'
  end

  def map
    render 'map.html.erb'
  end

  def about
    render 'about.html.erb'
  end

end
