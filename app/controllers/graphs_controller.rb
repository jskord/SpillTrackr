class GraphsController < ApplicationController
  def spills_by_year
    # Recipe.where("chef LIKE ?", "%Ray%")

    # @y2k = Spill.where("dateIncident LIKE ?", "%2000%")
    @y2k1 = Spill.where(dateIncident: 15.years.ago..14.years.ago)
    @y2k2 = Spill.where(dateIncident: 14.years.ago..13.years.ago)
    @y2k3 = Spill.where(dateIncident: 13.years.ago..12.years.ago)
    @y2k4 = Spill.where(dateIncident: 12.years.ago..11.years.ago)
    @y2k5 = Spill.where(dateIncident: 11.years.ago..10.years.ago)
    @y2k6 = Spill.where(dateIncident: 10.years.ago..9.years.ago)
    @y2k7 = Spill.where(dateIncident: 9.years.ago..8.years.ago)
    @y2k8 = Spill.where(dateIncident: 8.years.ago..7.years.ago)
    @y2k9 = Spill.where(dateIncident: 7.years.ago..6.years.ago)
    @y2k10 = Spill.where(dateIncident: 6.years.ago..5.years.ago)
    @y2k11 = Spill.where(dateIncident: 5.years.ago..4.years.ago)
    @y2k12 = Spill.where(dateIncident: 4.years.ago..3.years.ago)
    @y2k13 = Spill.where(dateIncident: 3.years.ago..2.years.ago)
    @y2k14 = Spill.where(dateIncident: 2.years.ago..1.years.ago)
    @y2k15 = Spill.where(dateIncident: 1.years.ago..Date.today)
    render 'crude_oil.html.erb'
  end
end
