class PagesController < ApplicationController
  def home
    render 'home.html.erb'
  end

  def map
    @spills = Spill.all
    render 'map.html.erb'
  end

  def graphs
    render 'graphs.html.erb'
  end
  
end
