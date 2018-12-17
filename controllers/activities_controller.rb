# require('sinatra')
# require('sinatra/conrtib/all')
require_relative('../models/activity.rb')
also_reload('./models/*')
#
# # index

get '/activities' do
  @activities = Activity.all()
  erb( :"activities/index" )
end

# new

get '/activities/new' do
  @activities = Activity.all
  erb( :"activities/new" )
end

# show

get '/activities/:id' do
  @activities = Activity.find(params[:id])
  erb( :"activities/show" )
end

# create

post '/activities' do
  activity = Activity.new(params)
  activity.save
  redirect to '/activities'
end

# edit

get '/activities/:id/edit' do
  @activities = Activity.find(params[:id])
  erb(:"activities/edit")
end


# update

post '/activities/:id' do
  activity = Activity.new(params)
  activity.update
  redirect to "/activities/#{params['id']}"
end

# delete

post '/activities/:id/delete' do
  activity = Activity.find(params['id'])
  activity.delete
  redirect to '/activities'
end
