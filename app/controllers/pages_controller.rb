class PagesController < ApplicationController
  def home
    render 'home.html.erb'
  end

  def signup
    render 'signup.html.erb'
  end

  def map
    render 'map.html.erb'
  end

  
end
