# require('sinatra')
# require('sinatra/contrib/all')
require('pry-byebug')
require_relative('../models/booking.rb')
require_relative('../models/activity.rb')
require_relative('../models/member.rb')
also_reload('./models/*')

# index


get '/bookings' do
  @bookings = Booking.all
  erb( :"bookings/index")
end

# # show
#
get '/bookings/:id' do
  @bookings = Booking.find(params[:id])
  erb( :"bookings/show" )
end
#
# # new
get '/bookings/new' do
  @members = Member.all
  @activities = Activity.all
  erb(:"bookings/new")
end
#
# # create
#
post '/bookings' do
  booking = Booking.new(params)
  booking.save
  redirect to("/bookings")
end
#
# # edit
# get '/bookings/:id/edit' do
#   @bookings = Booking.find(params[:id])
#   erb(:"bookings/edit")
# end
#
#
# # update
#
# post '/bookings/:id' do
#   booking = Booking.new(params)
#   booking.update
#   redirect to "/bookings/#{params['id']}"
# end
#
#
# # delete
#
post '/booking/:id/delete' do
  Booking.delete(params[:id])
  redirect to("/bookings")
end
