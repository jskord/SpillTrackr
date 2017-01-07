class PagesController < ApplicationController
  def home
    render 'home.html.erb'
  end

  def map
    render 'map.html.erb'
  end

  def index
    @spills = Spill.all
    render 'index.html.erb'
  end

  
end
