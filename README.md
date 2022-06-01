**Scripts**

There is no UI except login, signup. You can test the application using following scripts.
```
u1 = User.create(email: 'admin@mail.com', password: 'testing123', role: 1)
u2 = User.create(email: 'user@mail.com', password: 'testing123', role: 2)


q = Quiz.create(title: "quiz one testing", user_id: u1.id)
qu1 = Question.create(title: 'How tall are you?', quiz_id: q.id)
qu2 = Question.create(title: 'How much do you weigh?', quiz_id: q.id)

Answer.create(title: '180cm', question_id: qu1.id, user_id: u2.id, quiz_id: q.id)

u1.quizzes
u2.answers

q.questions.map do |question| [question.title, question.answers.map(&:title).join(',')] end
```
