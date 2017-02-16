puts "Admins: #{Admin.count}/102"

Admin.create!(last_name: 'Tarter', first_name: 'Jill',
              username: 'jill_tarter',
              email: 'jill_tarter@rubyonracetracks.com',
              password: 'SETI Institute',
              password_confirmation: 'SETI Institute',
              confirmed_at: Time.now, super: true)

Admin.create!(last_name: 'Drake', first_name: 'Frank',
              username: 'frank_drake',
              email: 'fdrake@rubyonracetracks.com',
              password: 'Drake Equation',
              password_confirmation: 'Drake Equation',
              confirmed_at: Time.now, super: true)

puts "Admins: #{Admin.count}/102"

50.times do |n|
  name_l = Faker::Name.last_name
  name_f = Faker::Name.first_name
  email_address = "admin-#{n + 1}@rubyonracetracks.com"

  Admin.create!(last_name: name_l, first_name: name_f,
                username: "admin#{n + 1}",
                email: email_address, password: 'Daytona 500',
                password_confirmation: 'Daytona 500',
                confirmed_at: Time.now)
  print " #{Admin.count} " if (Admin.count % 10).zero?
end

50.times do |n|
  name_l = Faker::Name.last_name
  name_f = Faker::Name.first_name
  email_address = Faker::Internet.email(name_f)

  Admin.create!(last_name: name_l, first_name: name_f,
                username: "admin-faker#{n + 1}",
                email: email_address, password: 'Daytona 500',
                password_confirmation: 'Daytona 500',
                confirmed_at: Time.now)
  print  " #{Admin.count} " if (Admin.count % 10).zero?
end

puts "Admins: #{Admin.count}/102"

puts "Users: #{User.count}/101"

User.create!(last_name: 'Arroway', first_name: 'Ellie',
             username: 'earroway',
             email: 'ellie_arroway@rubyonracetracks.com',
             password: '3.14159265',
             password_confirmation: '3.14159265',
             confirmed_at: Time.now)

puts "Users: #{User.count}/101"

50.times do |n|
  name_l = Faker::Name.last_name
  name_f = Faker::Name.first_name
  email_address = "user-#{n + 1}@rubyonracetracks.com"

  User.create!(last_name: name_l, first_name: name_f,
               username: "user#{n + 1}", email: email_address,
               password: 'Daytona 500',
               password_confirmation: 'Daytona 500',
               confirmed_at: Time.now)
  print  " #{User.count} " if (User.count % 10).zero?
end

50.times do |n|
  name_l = Faker::Name.last_name
  name_f = Faker::Name.first_name
  email_address = Faker::Internet.email(name_f)

  User.create!(last_name: name_l, first_name: name_f,
               username: "user-faker#{n + 1}", email: email_address,
               password: 'Daytona 500',
               password_confirmation: 'Daytona 500',
               confirmed_at: Time.now)
  print " #{User.count} " if (User.count % 10).zero?
end

puts "Users: #{User.count}/101"
