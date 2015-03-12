user_attr = {
  email: 'test@test.com',
  password: 'password',
  password_confirmation: 'password'
}

user = User.new(user_attr)
user.save!

# Create tasks
task_one = user.tasks.build(name: 'This thing')
task_one.save!

task_two = user.tasks.build(name: 'That thing')
task_two.save!

task_three = user.tasks.build(name: 'The other thing')
task_three.save!
