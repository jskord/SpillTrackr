class SpillsController < ApplicationController
  def recent_spills
    @spills = Spill.all
    render 'recent_spills.html.erb'
  end
end
