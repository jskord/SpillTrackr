class SpillsController < ApplicationController

  def index
    @spills = Spill.all
    render 'index.html.erb'
  end

  def bakken_counties
    @spills = Spill.where(County: "McKenzie")
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
    render 'bakken_counties.html.erb'
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