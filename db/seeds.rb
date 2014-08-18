# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
User.create(name: 'David', email: 'david@example.com', zip_code:'92683', password_digest: 'david1')

User.create(name: 'Matt', email: 'matt@example.com', zip_code:'92683', password_digest: 'matt12')

User.create(name: 'Ruby', email: 'ruby@example.com', zip_code:'92633', password_digest: 'ruby12')

Event.create(name: 'The Starlight Awards', location: '214 South Main Street, Los Angeles, 90012', when: DateTime.new(2014, 10, 23, 18), description:'Philanthropists Awards Dinner', image: 'http://www.starlight.org/sites/default/files/styles/event_teaserimage/public/events/teasers/SCF_StarlightAwards_3.jpg', contact_phone: '4242453664', contact_email: 'www.starlight.org.contact')

Event.create(name: 'Teen Advocacy Working Group', location: '543 N. Fairfax Avenue, Los Angeles, CA 90036', when: DateTime.new(2014, 8, 24, 14), description: 'Discussion - Tragic Virginia Tech Shooting', image: 'http://ncjwla.org/wp-content/uploads/2014/08/Living-for-32-image-for-website-1024x524.jpg', contact_phone: '3238528536', contact_email: 'http://ncjwla.org/about/contact-us/')

Event.create(name: 'Life Transitions - Workshops for Women', location: '543 N. Fairfax Avenue, Los Angeles, CA 90036', when: DateTime.new(2014, 9, 07, 10), description: 'Discussion - Transitions in Life: Childhood to Senior', image: 'http://ncjwla.org/wp-content/uploads/2014/06/Life-Transitions-graphic-for-FB.jpg', contact_phone: '3238528536', contact_email: 'maya@ncjwla.org')

Event.create(name: 'Nothing But Sand Cleanup', location: 'Dockweiler State Beach: 11999 Vista Del Mar', when: DateTime.new(2014, 8, 16, 10), description: 'Volunteer Cleanup', image: 'http://www.healthebay.org/sites/default/files/cigarette-butts-on-beach.jpg', contact_phone: '3104511500', contact_email: 'http://www.healthebay.org/contact-us')

Event.create(name: 'Film Screening: Walking Under Water', location: 'USC: 900 W. 34th Street, Los Angeles, CA 90089', when: DateTime.new(2014, 8, 19, 7), description: 'Sea Gypsies', image: 'http://www.healthebay.org/sites/default/files/Walking-Under-Water-300px.jpg', contact_phone: '3104511500', contact_email: 'http://www.healthebay.org/contact-us')

Event.create(name: 'Marine Protected Areas Steward', location: 'Heal the Bay Main Office: 1444 9th Street, Santa Monica, Ca 90401', when: DateTime.new(2014, 8, 21, 6), description: 'Classroom Training: be a Marine Protected Areas Steward', image: 'http://www.healthebay.org/sites/default/files/buttons/MPA-WATCH-LOGO-400px.jpg', contact_phone: '3104511500', contact_email: 'http://www.healthebay.org/contact-us')

Event.create(name: 'Aquarium Orientation & Open House', location: 'Santa Monica Pier Aquarium, 1600 Ocean Front Walk, Beach Level, Santa Monica, Ca 90401', when: DateTime.new(2014, 9, 4, 6), description: 'Learn How to get involved with the Aquarium', image: 'http://www.healthebay.org/sites/default/files/event-images/smpa-exterior-300px.jpg', contact_phone: '3103936149', contact_email: 'https://www.healthebay.org/secure/rsvp-aquarium-volunteer-orientation')

Event.create(name: 'Connect A Million Minds:  S.T.E.A.M Machines', location: 'Santa Monica Pier Aquarium, 1600 Ocean Front Walk, Beach Level, Santa Monica, Ca 90401', when: DateTime.new(2014, 11, 15, 11), description: 'A Celebration of S.T.E.A.M Chock-full of Curious Contraptions', image: 'http://www.healthebay.org/sites/default/files/CAMM_Logo_Orange_RGB_300_2.jpg', contact_phone: '3103936149', contact_email: 'https://www.healthebay.org/secure/rsvp-aquarium-volunteer-orientation')

Event.create(name: 'Internships:  Heal the Bay', location: 'Heal the Bay Main Office: 1444 9th Street, Santa Monica, Ca 90401', when: DateTime.new(2014, 9, 1, 9), description: 'Internships Available: Information and Application Process', image: 'http://www.healthebay.org/sites/default/files/imagecache/slideshow_inside_355x280/Office_Volunteer1_355x280.jpg', contact_phone: '3104511500', contact_email: 'http://www.healthebay.org/contact-us')

Event.create(name: 'Breaking the Cycle of Homelessness', location: '2691 Richter Avenue, Suite 107, Irvine, CA 92606', when: DateTime.new(2014, 9, 1, 9), description: 'Volunteer to Break the Cycle of Homelessness', image: 'http://www.ifhomeless.org/wp-content/uploads/2013/12/585770807_img_2888-500x333.jpg', contact_phone: '7145072459', contact_email: 'http://www.ifhomeless.org/events/volunteer/')

Event.create(name: 'Renegade Magic Mountain Man Triathlon & Run', location: 'Castaic Lake, Parking Lots 5 & 6, Castaic Lake Dirve, CA 91384', when: DateTime.new(2014, 9, 27, 5), description: 'Volunteer: 2014 Magic Mountain Triathlon & 5k - 10k Run', image: 'http://www.renegaderaceseries.com/images/stories/magic_mountain_man/2014/events_M3Run-TRI_logo.png', contact_phone: '9499751812', contact_email: 'http://www.renegaderaceseries.com')

Event.create(name: 'TRY5K Women and Youth Run/Walk', location: 'Northwood High School: 4515 Portola Pkwy, Irvine, CA 92620', when: DateTime.new(2014, 8, 23, 6), description: 'TRY5K Women and Youth Run/Walk', image: 'http://www.renegaderaceseries.com/images/eventlist/events/events_itry5k_logo_1405467502.png', contact_phone: '9499751812', contact_email: 'http://www.renegaderaceseries.com')