class MapsController < ApplicationController

  def json_index
    all = Spill.all
    render json: all.to_json
  end

  def date_sorted
    
    render json: date_sorted.tojson
end
