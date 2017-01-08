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
                  .or(Spill.where(County: "Stark")
                    )
                  )
                )
              )
            )
          )
        )
      )
    render 'bakken_counties.json.jbuilder'
  end

  def json_last_five_years
    bakken_counties = Spill.where(County: "McKenzie")
    .or(Spill.where(County: "Divide")
      .or(Spill.where(County: "Burke")
        .or(Spill.where(County: "Williams")
          .or(Spill.where(County: "Dunn")
            .or(Spill.where(County: "Billings")
              .or(Spill.where(County: "Golden Valley")
                .or(Spill.where(County: "Mountrail")
                  .or(Spill.where(County: "Stark")
                    )
                  )
                )
              )
            )
          )
        )
      )
    @last_five_years = bakken_counties.where(DateIncident: 5.years.ago..Date.today)
    render 'last_five_years.json.jbuilder'
  end

  def json_ten_to_five_years_ago
    bakken_counties = Spill.where(County: "McKenzie")
    .or(Spill.where(County: "Divide")
      .or(Spill.where(County: "Burke")
        .or(Spill.where(County: "Williams")
          .or(Spill.where(County: "Dunn")
            .or(Spill.where(County: "Billings")
              .or(Spill.where(County: "Golden Valley")
                .or(Spill.where(County: "Mountrail")
                  .or(Spill.where(County: "Stark")
                    )
                  )
                )
              )
            )
          )
        )
      )
    @ten_to_five_years_ago = bakken_counties.where(DateIncident: 10.years.ago..5.years.ago)
    render 'ten_to_five_years_ago.json.jbuilder'
  end


  def json_fifteen_to_ten_years_ago
    bakken_counties = Spill.where(County: "McKenzie")
    .or(Spill.where(County: "Divide")
      .or(Spill.where(County: "Burke")
        .or(Spill.where(County: "Williams")
          .or(Spill.where(County: "Dunn")
            .or(Spill.where(County: "Billings")
              .or(Spill.where(County: "Golden Valley")
                .or(Spill.where(County: "Mountrail")
                  .or(Spill.where(County: "Stark")
                    )
                  )
                )
              )
            )
          )
        )
      )
    @fifteen_to_ten_years_ago = bakken_counties.where(DateIncident: 15.years.ago..10.years.ago)
    render 'fifteen_to_ten_years_ago.json.jbuilder'
  end
  
end
