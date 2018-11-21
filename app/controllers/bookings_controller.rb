class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end
    
  def new
    @field = Field.find(params[:field_id])
    @booking = Booking.new
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
  end

  def edit

  end

  def update

  end

  private

  def params_booking
    params.require(:booking).permit(:start_date, :end_date, :status, :field_id)
  end
end
