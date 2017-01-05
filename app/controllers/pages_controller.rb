class PagesController < ApplicationController
  def home
    render 'home.html.erb'
  end

  def map
    render 'map.html.erb'
  end

  def all_state
    render 'map_allstate.html.erb'
  end

  
end
