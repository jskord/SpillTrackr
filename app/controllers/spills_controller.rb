class SpillsController < ApplicationController
  def index
    @spills = Spill.all
    render 'index.json.jbuilder'
  end

  def show
    if params[:id] == "random"
      spill = Spill.all
      @spill = spill.sample
    else
      spill_id = params[:id]
      @spill = Spill.find_by(id: spill_id)
    end
    render 'show.json.jbuilder'
  end

end
