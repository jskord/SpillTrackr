class SpillsController < ApplicationController
  def index
    @spills = Spill.all
    render 'index.html.erb'
  end
end
