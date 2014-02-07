# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

team = Team.create()

carol = User.create(name: "Carol", email: "carol@carol.com", password: "c", password_confirmation: "c")
ben = User.create(name: "Ben", email: "ben@ben.com", password: "b", password_confirmation: "b")
engelbert = User.create(name: "Engelbert Humperdinck", email: "engelbert@engelbert.com", password: "e", password_confirmation: "e")

team.users << carol
team.users << ben
team.users << engelbert

okr = Okr.create(objective: "Learn coding", kr1: "Get through GA bootcamp", kr2: "Make an accountability app")
okr2 = Okr.create(objective: "Get more healthier", kr1: "Lose 10lbs", kr2: "Run a marathon")
okr3 = Okr.create(objective: "Learn accounting", kr1: "Take intro accounting course", kr2: "Understand financial statments")

carol.okrs << okr
ben.okrs << okr2
engelbert.okrs << okr3
engelbert.okrs << okr2

todo = Todo.create(todo: "Fix authentication", pct_complete: 100, week_created: "2014w05")
todo2 = Todo.create(todo: "Try not to throw computer out window", pct_complete: 100, week_created: "2014w06")
todo3 = Todo.create(todo: "Run 3 miles", pct_complete: 50, week_created: "2014w05")
todo4 = Todo.create(todo: "Go to gym 3 times", pct_complete: 33, week_created: "2014w05")
todo5 = Todo.create(todo: "Find a list of accounting courses", pct_complete: 80, week_created: "2014w05")
todo6 = Todo.create(todo: "Fix authentication", pct_complete: 100, week_created: "2014w06")
todo7 = Todo.create(todo: "blah blah", pct_complete: 60, week_created: "2014w06")
todo8 = Todo.create(todo: "blah blah", pct_complete: 90, week_created: "2014w05")

carol.todos << todo
carol.todos << todo2
carol.todos << todo8
ben.todos << todo3
ben.todos << todo4
ben.todos << todo7
ben.todos << todo8
engelbert.todos << todo3
engelbert.todos << todo4
engelbert.todos << todo5
engelbert.todos << todo6
engelbert.todos << todo7
engelbert.todos << todo8
