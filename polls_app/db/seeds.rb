# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
user1 = User.create(username: 'user1')
user2 = User.create(username: 'user2')
user3 = User.create(username: 'user3')

Poll.destroy_all
poll1 = Poll.create(title: 'what is up', author_id: user1.id)
poll2 = Poll.create(title: 'hello there', author_id: user2.id)
poll3 = Poll.create(title: 'time is running out', author_id: user3.id)

Question.destroy_all
question1 = Question.create(text: 'what?', poll_id: poll1.id)
question2 = Question.create(text: 'huh?', poll_id: poll2.id)
question3 = Question.create(text: 'hey?', poll_id: poll3.id)

AnswerChoice.destroy_all
ac1 = AnswerChoice.create(question_id: question1.id, user_id: user1.id, text: "NO!!")
ac2 = AnswerChoice.create(question_id: question2.id, user_id: user2.id, text: "why !!")
ac3 = AnswerChoice.create(question_id: question3.id, user_id: user3.id, text: "okay")

Response.destroy_all
response1 = Response.create(user_id: user1.id, answer_choice_id: ac1.id)
response2 = Response.create(user_id: user2.id, answer_choice_id: ac2.id)
response3 = Response.create(user_id: user3.id, answer_choice_id: ac3.id)
