# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Developer.create(name: "Spok", email: "spok@gmail.com", password_digest: "password")
Developer.create(name: "Jimmy Dean", email: "jimmy@gmail.com", password_digest: "password")
Developer.create(name: "Aunt Jemima", email: "aunt@gmail.com", password_digest: "password")

Project.create(name: "Critical Analysis of Flash Gordon", max_hours: 10)
Project.create(name: "The Capital Forming Effects of Military Mobilization", max_hours: 20)
Project.create(name: "Flux Capacitor", max_hours: 50)

TimeEntry.create(duration_worked: 1.5, project_id: 1, developer_id: 1, worked_on: Date.today)
TimeEntry.create(duration_worked: 10.7, project_id: 2, developer_id: 2, worked_on: Date.today)
TimeEntry.create(duration_worked: 30.45, project_id: 3, developer_id: 3, worked_on: Date.today)
