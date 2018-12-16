require_relative('../models/booking')
require_relative('../models/activity')
require_relative('../models/member')

require('pry')

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



member4 = Member.new({
  "first_name" => "Sean",
  "last_name" => "Kenna",
  "address" => "Hamilton Pl, Edinburgh",
  "age" => 27
  })

member4.save()

member5 = Member.new({
  "first_name" => "Martha",
  "last_name" => "Gilles",
  "address" => "Laurieston Pl, Edinburgh",
  "age" => 45
  })

member5.save()

activity1 = Activity.new({
  "activity_name" => "Yin Yoga",
  "category" => "Beginner"
  })

activity1.save()

activity2 = Activity.new({
  "activity_name" => "Rocket",
  "category" => "Advanced"
  })

activity2.save()

activity3 = Activity.new({
  "activity_name" => "Vinyasa",
  "category" => "Intermediate"
  })

activity3.save()

activity4 = Activity.new({
  "activity_name" => "Power",
  "category" => "Intermediate"
  })

activity4.save()


booking1 = Booking.new({
  "studio_name" => "Serenity Now!",
  "member_id" => member1.id,
  "activity_id" => activity1.id
  })
booking1.save()

booking2 = Booking.new({
  "studio_name" => "Serenity Now!",
  "member_id" => member2.id,
  "activity_id" => activity2.id
  })
booking2.save()

booking3 = Booking.new({
  "studio_name" => "Serenity Now!",
  "member_id" => member3.id,
  "activity_id" => activity1.id
  })
booking3.save()

booking4 = Booking.new({
  "studio_name" => "Serenity Now!",
  "member_id" => member4.id,
  "activity_id" => activity3.id
  })
booking4.save()

binding.pry
nil
