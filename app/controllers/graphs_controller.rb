class GraphsController < ApplicationController
  def spills_by_year
    spills = Spill.all

    @y2k = spills.select { |spill| spill.date_incident.year == 2000 }.count

    render 'crude_oil.html.erb'
  end
end
