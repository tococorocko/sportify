class FieldsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :city, :field, :show]
  before_action :set_field, only: [:show, :edit, :update, :destroy]

  def index
    @fields = policy_scope(Field).order(:id)
  end

  def city
    @city_name = params[:city]
    if params[:query].present?
      @fields = Field.where("city ILIKE ? AND category ILIKE ?", @city_name, "%#{params[:query]}%")
      @markers = @fields.map do |field|
        {
          lng: field.longitude,
          lat: field.latitude,
          infoWindow: { content: render_to_string(partial: "/fields/map_window", locals: { field: field }) }
        }
      end
    else
      @fields = Field.where("city ILIKE ?", @city_name)
      @markers = @fields.map do |field|
        {
          lng: field.longitude,
          lat: field.latitude,
          infoWindow: { content: render_to_string(partial: "/fields/map_window", locals: { field: field }) }
        }
    end
    end

  end

  def new
    @field = Field.new
    authorize @field
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
    authorize @field
  end

  def show
    @user = User.find(@field.user_id)
    authorize @field
    fields_collection = Field.where(id: params[:id])
    @markers = fields_collection.map do |field|
      {
        lat: field.latitude,
        lng: field.longitude,
        infoWindow: { content: render_to_string(partial: "/shared/map_window", locals: { field: field }) }
      }
    end
  end

  def edit
  end

  def update
    if @field.update(field_params)
      redirect_to @field, notice: 'Field was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    if @field.bookings.present?
      redirect_to fields_url, alert: "You can't delete a field with pending bookings! 👎🏻"
    else
      @field.destroy
      redirect_to fields_url, notice: 'Field was successfully deleted.'
    end
  end

  private

  def set_field
    @field = Field.find(params[:id])
    authorize @field
  end

  def field_params
    params.require(:field).permit(:name, :description, :street, :city, :category,
                                  :price_per_hour, :picture, :opening_hours,
                                  :latitude, :longitude)
  end

end

