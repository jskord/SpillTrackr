class MapsController < ApplicationController

  def json_index
    @spills = Spill.all
    render 'index.json.jbuilder'
  end

  def json_bakken_counties

    @spills_bakken_counties = Spill.where(county: "McKenzie")
    .or(Spill.where(county: "Divide")
      .or(Spill.where(county: "Burke")
        .or(Spill.where(county: "Williams")
          .or(Spill.where(county: "Dunn")
            .or(Spill.where(county: "Billings")
              .or(Spill.where(county: "Golden Valley")
                .or(Spill.where(county: "Mountrail")
                  .or(Spill.where(county: "Stark")
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
    bakken_counties = Spill.where(county: "McKenzie")
    .or(Spill.where(county: "Divide")
      .or(Spill.where(county: "Burke")
        .or(Spill.where(county: "Williams")
          .or(Spill.where(county: "Dunn")
            .or(Spill.where(county: "Billings")
              .or(Spill.where(county: "Golden Valley")
                .or(Spill.where(county: "Mountrail")
                  .or(Spill.where(county: "Stark")
                    )
                  )
                )
              )
            )
          )
        )
      )
    @last_five_years = bakken_counties.where(date_incident: 5.years.ago..Date.today)
    render 'last_five_years.json.jbuilder'
  end

  def json_ten_to_five_years_ago
    bakken_counties = Spill.where(county: "McKenzie")
    .or(Spill.where(county: "Divide")
      .or(Spill.where(county: "Burke")
        .or(Spill.where(county: "Williams")
          .or(Spill.where(county: "Dunn")
            .or(Spill.where(county: "Billings")
              .or(Spill.where(county: "Golden Valley")
                .or(Spill.where(county: "Mountrail")
                  .or(Spill.where(county: "Stark")
                    )
                  )
                )
              )
            )
          )
        )
      )
    @ten_to_five_years_ago = bakken_counties.where(date_incident: 10.years.ago..5.years.ago)
    render 'ten_to_five_years_ago.json.jbuilder'
  end


  def json_fifteen_to_ten_years_ago
    bakken_counties = Spill.where(county: "McKenzie")
    .or(Spill.where(county: "Divide")
      .or(Spill.where(county: "Burke")
        .or(Spill.where(county: "Williams")
          .or(Spill.where(county: "Dunn")
            .or(Spill.where(county: "Billings")
              .or(Spill.where(county: "Golden Valley")
                .or(Spill.where(county: "Mountrail")
                  .or(Spill.where(county: "Stark")
                    )
                  )
                )
              )
            )
          )
        )
      )
    @fifteen_to_ten_years_ago = bakken_counties.where(date_incident: 15.years.ago..10.years.ago)
    render 'fifteen_to_ten_years_ago.json.jbuilder'
  end
  
end
