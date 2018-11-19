class FieldsController < ApplicationController
  def city
    @city_name = params[:city]
    @fields = Field.where(city: @city_name)
  end
end
