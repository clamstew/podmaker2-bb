# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# Environment variables (ENV['...']) can be set in the file config/application.yml.
# See http://railsapps.github.io/rails-environment-variables.html
puts 'ROLES'
YAML.load(ENV['ROLES']).each do |role|
  Role.find_or_create_by_name(role)
  puts 'role: ' << role
end
puts 'DEFAULT USERS'
user = User.find_or_create_by_email :name => ENV['ADMIN_NAME'].dup, :email => ENV['ADMIN_EMAIL'].dup, :password => ENV['ADMIN_PASSWORD'].dup, :password_confirmation => ENV['ADMIN_PASSWORD'].dup
puts 'user: ' << user.name
user.add_role :admin

# students
Cohort.create(date_start: "2014-02-04", date_end: "2014-02-05", number: 4,)
Student.create!(image_url:'https://2.gravatar.com/avatar/e0dcfea91f3665e9a7367a69bd3c2e19?d=https%3A%2F%2Fidenticons.github.com%2F419a099421903ecdab32cfc3fd6dd6e1.png&r=x&s=400', f_name:'Zalary', l_name:'Young', github:'https://github.com/zalary', twitter:'zalary', email: 'taylor@themakersquare', cohort_id: Cohort.last.id )
