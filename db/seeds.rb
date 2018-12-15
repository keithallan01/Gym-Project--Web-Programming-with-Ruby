require_relative('../models/class')
require_relative('../models/member')
require_relative('../models/booking')
require('pry-byebug')

member1 = Member.new({
  "first_name" => "Keith",
  "last_name" => "Allan",
  "address" => "High St, Edinburgh",
  "age" => 30
 })

member1.save()

member2 = Member.new({
  "first_name" => "Helen",
  "last_name" => "Gillespie",
  "address" => "Castle Terrace, Edinburgh",
  "age" => 31
  })
member2.save()


member3 = Member.new({
  "first_name" => "Iona",
  "last_name" => "Geddes",
  "address" => "Main St, Mussleburgh",
  "age" => 25
  })
member3.save()

binding.pry
nil

# member4 = Member.new({
#   "first_name" => "Sean",
#   "last_name" => "Kenna",
#   "address" => "Hamilton Pl, Edinburgh",
#   "age" => 27
#   })
#
# member4.save()

# member5 = Member.new({
#   "first_name" => "Martha",
#   "last_name" => "Gilles",
#   "address" => "Laurieston Pl, Edinburgh",
#   "age" => 45
#   })
#
# member5.save()

# class1 = Class.new({
#   "class_name" => "Yin Yoga",
#   "category" => "Beginner"
#   })
#
# class2 = Class.new({
#   "class_name" => "Rocket",
#   "category" => "Advanced"
#   })
#
# class3 = Class.new({
#   "class_name" => "Vinyasa",
#   "category" => "Intermediate"
#   })
#
# class4 = Class.new({
#   "class_name" => "Power",
#   "category" => "Intermediate"
#   })
#
# booking1 = Booking.new({
#   "studio_name" => "Serenity Now!",
#   "member_id" => member1.id,
#   "class_id" => class1.id
#   })
#
# booking2 = Booking.new({
#   "studio_name" => "Serenity Now!",
#   "member_id" => member2.id,
#   "class_id" => class2.id
#   })
#
# booking3 = Booking.new({
#   "studio_name" => "Serenity Now!",
#   "member_id" => member3.id,
#   "class_id" => class1.id
#   })
#
# booking4 = Booking.new({
#   "studio_name" => "Serenity Now!",
#   "member_id" => member4.id,
#   "class_id" => class3.id
#   })
# binding.pry
# nil
