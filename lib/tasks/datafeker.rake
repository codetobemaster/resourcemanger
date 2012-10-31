namespace :db do
  desc "Fill database with sample data"
  task populate: :environment do
    admin=User.create!(name: "example ",
                 email: "example@gmail.com",
                 password: "123456",
                 password_confirmation: "123456",
                 skyper: "example",
                 dateofbirth: "2012/08/04",
                 roles: 1,
                 status: 1
                 )
      admin.toggle!(:admin)

    99.times do |n|
      name  = Faker::Name.name
      email = "example-#{n+1}@gmail.com"
      password  = "123456"
      skyper= "example"
      dateofbirth= "2012/08/04"
      roles= 1
      status=1
      User.create!(name: name,
                   email: email,
                   password: password,
                   skyper: skyper,
                   dateofbirth: dateofbirth,
                   roles: roles,
                   status: status,
                   password_confirmation: password)
    end

Property.create!(property_type: "status",property_key: "created", property_value: "1")
Property.create!(property_type: "status",property_key: "completed", property_value: "2")
Property.create!(property_type: "status",property_key: "closed", property_value: "3")
  end
end
