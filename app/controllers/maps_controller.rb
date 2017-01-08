class MapsController < ApplicationController

  def json_index
    @spills = Spill.all
    render 'index.json.jbuilder'
  end

  def json_bakken_counties

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
    render 'bakken_counties.json.jbuilder'
  end
  
end
