class SpillsController < ApplicationController

  def index
    @spills = Spill.all
    render 'index.html.erb'
  end

  def show
    if params[:id] == "random"
      spill = Spill.all
      @spill = spill.sample
    else
      spill_id = params[:id]
      @spill = Spill.find_by(id: spill_id)
    end
    render 'show.html.erb'
  end

end