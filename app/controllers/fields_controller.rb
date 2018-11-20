class FieldsController < ApplicationController
  def city
    @city_name = params[:city]
    @city_name.capitalize!
    @fields = Field.where(city: @city_name)

  def new
    @field = Field.new
  end

  def create
    @field = Field.new(field_params)
    # @field.user = params[:current_user]
    @field.user = current_user
    if @field.save
      redirect_to fields_path
    else
      render new_field_path
    end
  end

  private

  def field_params
    params.require(:field).permit(:name, :description, :street, :city, :category,
                                  :price_per_hour, :picture, :opening_hours)
  end
end
