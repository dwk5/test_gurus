# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
categories = Category.create!([
  { title: 'Backend' },
  { title: 'Frontend' },
  { title: 'Mobile' }
])

tests = Test.create!([
  { title: 'Ruby' , category: categories[0] },
  { title: 'JavaScript' , level: 2, category: categories[1] },
  { title: 'Android' , category: categories[2] },
])

questions = Question.create!([
  { body: 'Who creates Ruby?', test: tests[0] },
  { body: 'What is private level of access control for Ruby methods?', test: tests[0] },
  { body: 'What do instance veribales begin with?', test: tests[0] },
  { body: 'Who creates JavaScript?', test: tests[1] },
  { body: 'What method does write a message to the console?', test: tests[1] },
  { body: 'Find there no JS framework?', test: tests[1] },
  { body: 'What is name of Android 6?', test: tests[2] },
  { body: 'Name of the language supported for Android development?', test: tests[2] },
  { body: 'Other language for Android development supported by Google?', test: tests[2] }
])

answers = Answer.create!([
  { body: 'Jon Snow', correct: false, question: questions[0] },
  { body: 'Yukihiro Matsumoto', correct: true, question: questions[0] },
  { body: 'Linus Torvalds', correct: false, question: questions[0] },
  { body: 'Can be called by anyone', correct: false, question: questions[1] },
  { body: 'Only accessible within their defining class and it subclasses', correct: false, question: questions[1] },
  { body: 'Can only be accessed and viewed within their defining class', correct: true, question: questions[1] },
  { body: '@@', correct: false, question: questions[2] },
  { body: '$', correct: false, question: questions[2] },
  { body: '@', correct: true, question: questions[2] },
  { body: 'Larry Page', correct: false, question: questions[3] },
  { body: 'Elon Musk', correct: false, question: questions[3] },
  { body: 'Brendan Eich', correct: true, question: questions[3] },
  { body: 'print', correct: false, question: questions[4] },
  { body: 'console.log()', correct: true, question: questions[4] },
  { body: 'puts', correct: false, question: questions[4] },
  { body: 'Django', correct: true, question: questions[5] },
  { body: 'React', correct: false, question: questions[5] },
  { body: 'Angular', correct: false, question: questions[5] },
  { body: 'Oreo', correct: false, question: questions[6] },
  { body: 'Marshmallow', correct: true, question: questions[6] },
  { body: 'Lollipop', correct: false, question: questions[6] },
  { body: 'Python', correct: false, question: questions[7] },
  { body: 'Swift', correct: false, question: questions[7] },
  { body: 'Java', correct: true, question: questions[7] },
  { body: 'Basic', correct: false, question: questions[8] },
  { body: 'Kotlin', correct: true, question: questions[8] },
  { body: 'Rust', correct: false, question: questions[8] }
])
