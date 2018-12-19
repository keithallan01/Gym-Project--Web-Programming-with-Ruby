require('pry-byebug')
require_relative('../models/booking.rb')
require_relative('../models/activity.rb')
require_relative('../models/member.rb')
also_reload('./models/*')

# index

get '/bookings' do
  @bookings = Booking.all
  @activities = Activity.all
  @members = Member.all
  erb( :"bookings/index")
end

 # new
get '/bookings/new' do
  @members = Member.all
  @activities = Activity.all
  erb(:"bookings/new")
end

# create

post '/bookings' do
  booking = Booking.new(params)
  booking.save
  redirect to("/bookings")
end

# delete

post '/bookings/:id/delete' do
  Booking.delete(params[:id])
  redirect to("/bookings")
end
