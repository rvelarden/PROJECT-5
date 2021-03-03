class BookingsController < ApplicationController

    def index
            bookings = Booking.all 
            render json: bookings, :include => :drone
    
    end

    def create
        booking = Booking.create(booking_params)
        render json: booking, :include => :drone
        
    end 

    def destroy
        booking = Booking.find(params[:id])
        Booking.destroy(params[:id])
        render json: booking, :include => :drone
    end 

    # def destroy
    #     @booking = Booking.find(params[:id])
    #     return head(:forbidden) unless has_access(@booking.user_id)
    #     @booking.destroy
    #     redirect_to current_user
    # end


    def update
        # byebug
        booking = Booking.find_by(id: params[:id]) #this is an object
        booking.update(booking_params)
        render json: booking, :include => :drone
    end
    

    def booking_params
        params.require(:booking).permit(:drone_id, :from_address, :to_address)
    end 

end