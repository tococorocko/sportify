class FieldsController < ApplicationController
  def city
    @city_name = params[:city]
    @city_name.capitalize!
    @fields = Field.where(city: @city_name)
  end
end
