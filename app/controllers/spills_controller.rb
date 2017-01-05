class SpillsController < ApplicationController
  def index
    @spills = Spill.all
    render 'index.json.jbuilder'
  end
  def bakken_counties

    @spills_bakken_counties = Spill.where(County: "McKenzie")
    .or(Spill.where(County: "Divide")
      .or(Spill.where(County: "Burke")
        .or(Spill.where(County: "Williams")
          .or(Spill.where(County: "Dunn")
            .or(Spill.where(County: "Billings")
              .or(Spill.where(County: "Golden Valley")
                .or(Spill.where(County: "Mountrail")
                  )
                )
              )
            )
          )
        )
      )

    # @spills_bakken_counties = []
    # @spills = Spill.all
    # @spills.each do |spill|
    #   if spill.County === "McKenzie"
    #     @spills_bakken_counties << spill
    #   end
    #   if spill.County === "Divide"
    #     @spills_bakken_counties << spill
    #   end
    #   if spill.County === "Burke"
    #     @spills_bakken_counties << spill
    #   end
    #   if spill.County === "Williams"
    #     @spills_bakken_counties << spill
    #   end
    #   if spill.County === "Dunn"
    #     @spills_bakken_counties << spill
    #   end
    #   if spill.County === "Billings"
    #     @spills_bakken_counties << spill
    #   end
    #   if spill.County === "Golden Valley"
    #     @spills_bakken_counties << spill
    #   end
    # end
    render 'bakken_counties.json.jbuilder'
  end

end