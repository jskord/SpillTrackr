class MapsController < ApplicationController

  def json_index
    all = Spill.all
    render json: all.to_json
  end


  def json_sort_by_date

    spills = Spill.all

    start_year = spills.select { |spill| spill.date_incident.year >= params[:start_year].to_i }

    start_year_month = start_year.select { |spill| spill.date_incident.month >= params[:start_month].to_i }

    end_year = start_year_month.select { |spill| spill.date_incident.year <= params[:end_year].to_i }

    year_month_range = end_year.select { |spill| spill.date_incident.month <= params[:end_month].to_i }

    render json: year_month_range.to_json
  end
    









  #   user = User.new(
  #     name: params[:name],
  #     email: params[:email],
  #     password: params[:password],
  #     password_confirmation: params[:password_confirmation]
  #   )
  #   if user.save
  #     session[:user_id] = user.id
  #     flash[:success] = 'Successfully created account!'
  #     redirect_to '/'
  #   else
  #     flash[:warning] = 'Invalid email or password!'
  #     redirect_to '/signup'
  #   end
  # end

end
