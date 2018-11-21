class FieldsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :city, :field]
  before_action :set_field, only: [:show, :edit, :update, :destroy]

  def index
    @fields = policy_scope(Field).order(created_at: :desc)
  end

  def city
    @city_name = params[:city]
    @fields = Field.where(city: @city_name.capitalize)
    if params[:query].present?
      @fields = Field.where(city: @city_name.capitalize, category: params[:query])
    else
      @fields = Field.where(city: @city_name.capitalize)
    end
  end

  def index
    @fields = Field.all
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
  end

  def show
    @user = User.find(@field.user_id)
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
    @field.destroy
    redirect_to fields_url, notice: 'Field was successfully deleted.'
  end

  private

  def set_field
    @field = Field.find(params[:id])
    authorize @field
  end

  def field_params
    params.require(:field).permit(:name, :description, :street, :city, :category,
                                  :price_per_hour, :picture, :opening_hours)
  end

end

#  @fields = current_user.fields
