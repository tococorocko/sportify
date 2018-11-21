class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def new
    @field = Field.find(params[:field_id])
    @booking = Booking.new
    authorize @booking
  end

  def create
    @field = Field.find(params[:field_id])
    @booking = Booking.new(params_booking)
    @user = current_user
    @booking.user = @user
    @booking.field = @field
    if @booking.check_real?
      if @booking.save
        redirect_to bookings_path
      else
        render 'new'
      end
    else
      render 'new'
    end
    authorize @booking
  end

  def check_booking
    @field = Field.find(params[:field])
    @bookings = Booking.where(field:@field)
    authorize @bookings
  end

  def edit
    @field = Field.find(params[:field_id])
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def update
    @field = Field.find(params[:field_id])
    @booking = Booking.find(params[:id])
    @booking.update(params_booking)
    if @booking.update(params_booking)
      redirect_to check_booking_path(@field), notice: 'Field was successfully updated.'
    else
      render :edit
    end
    authorize @booking
  end

  private

  def params_booking
    params.require(:booking).permit(:start_date, :end_date, :status, :field_id)
  end
end
