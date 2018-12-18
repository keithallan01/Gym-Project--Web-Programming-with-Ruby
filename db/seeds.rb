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
  "category" => "Beginner",
  "description" => "Yin Yoga is a slow-paced style of yoga with postures, or asanas, that are held for longer periods of time—for beginners, it may range from 45 seconds to two minutes; more advanced practitioners may stay in one asana for five minutes or more."
  })

activity1.save()

activity2 = Activity.new({
  "activity_name" => "Rocket",
  "category" => "Advanced",
  "description" => "Rocket Yoga is a yoga sequence developed by Larry Schultz in San Francisco during the 1980s. ROCKET is rooted in the Ashtanga Vinyasa Yoga practice of yoga. Schultz's yoga method was first called 'The ROCKET' by Bob Weir ofThe Grateful Dead, because Weir said, 'It gets you there faster.' "
  })

activity2.save()

activity3 = Activity.new({
  "activity_name" => "Vinyasa",
  "category" => "Intermediate",
  "description" => "Vinyasa Yoga, or Flow Yoga, describes yoga when it consists of a dynamic sequence of poses connected to the breath. Sun salutations are the most well-known kind of vinyasa sequence. Each inhale and exhale goes along with a specific movement. That doesn’t mean that you won’t stay in an asana longer than one breath in a Vinyasa class, but there will be more emphasis on the sequence itself and transitions between each asana."
  })

activity3.save()

activity4 = Activity.new({
  "activity_name" => "Power",
  "category" => "Intermediate",
  "description" => "Power Yoga is a general term used to describe a vigorous, fitness-based approach to vinyasa-style yoga. Though many consider power yoga to be superficial 'gym yoga,' this style of yoga practice was originally closely modeled on the Ashtanga method. Power yoga incorporates the athleticism of Ashtanga, including lots of vinyasas (series of poses done in sequence) but gives each teacher the flexibility to teach any poses in any order, making every class different. With its emphasis on strength and flexibility, power yoga brought yoga into the gyms of America as people began to see yoga as a way to work out."
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
