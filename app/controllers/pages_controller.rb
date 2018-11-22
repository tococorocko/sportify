class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :search]


  def home
    @fields = Field.all
  end

  def search
    @fields = Field.all
    @city = (params[:query]).capitalize
      if Field.where(city: "#{@city}" ).present?
        redirect_to city_path(@city)
      else
        redirect_to root_path, alert: "Sorry!😞 Currently no Field in #{@city} available!"
      end
  end

end
