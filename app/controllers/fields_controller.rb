class FieldsController < ApplicationController
  before_action :set_field, only: [:show, :edit, :update, :destroy]

  def index
    @fields = policy_scope(Field).order(created_at: :desc)
  end

  def show
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
    redirect_to fields_url, notice: 'Field was successfully destroyed.'
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
